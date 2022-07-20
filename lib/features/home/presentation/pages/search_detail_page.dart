import 'package:election_app/features/home/presentation/widgets/search_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../domain/constants/item_type.dart';
import '../../domain/entities/district_details/district_name.dart';
import '../../domain/entities/municipality_details/municipality_name.dart';
import '../../domain/entities/pradesh_details/pradesh_name.dart';
import '../../domain/usecases/get_homepage_data_usecase.dart';
import '../../domain/usecases/get_searchpage_data_usecase.dart';
import '../bloc/search_detail_bloc/search_detail_bloc.dart';

class SearchDetailPage extends StatefulWidget {
  const SearchDetailPage({Key? key}) : super(key: key);

  @override
  State<SearchDetailPage> createState() => _SearchDetailPageState();
}

class _SearchDetailPageState extends State<SearchDetailPage> {
  int? districtprovinceId;

  int? selectedProvinceId, selectedDistrictId, selectedMunicipalityId;

  final GlobalKey<FormFieldState> _districtKey = GlobalKey<FormFieldState>(),
      _municipalityKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("स्थानीय तहको निर्वाचन २०७९"),
      ),
      body: BlocProvider(
        create: (searchoptionscontext) => SearchDetailBloc(
            getIt<GetHomePageDataUseCase>(), getIt<GetSearchPageDataUseCase>())
          ..add(SearchDetailEvent.loadSearchOptions()),
        child: BlocConsumer<SearchDetailBloc, SearchDetailState>(
          listener: (context, state) {
            state.map(
                searchOptionLoading: (s) {},
                searchOptionLoadFailure: (s) {},
                searchOptionLoadSuccess: (s) {},
                searchDataLoading: (s) {},
                searchDataLoadFailure: (s) {},
                searchDataLoadSuccess: (s) {});
          },
          builder: (buildcontext, state) {
            return state.map(
                searchOptionLoading: (s) =>
                    const Center(child: CircularProgressIndicator()),
                searchOptionLoadFailure: (s) => Center(
                      child: Column(
                        children: [
                          const Text("No connection.Try again"),
                          IconButton(
                              onPressed: () {
                                BlocProvider.of<SearchDetailBloc>(buildcontext)
                                    .add(SearchDetailEvent.loadSearchOptions());
                              },
                              icon: const Icon(Icons.restart_alt))
                        ],
                      ),
                    ),
                searchOptionLoadSuccess: (s) {
                  final provinceFromResponse = s.searchOptionsdata.items?.where(
                          (element) => element.type == ItemType.PRADESH) ??
                      [];
                  final districtsFromResponse = s.searchOptionsdata.items
                          ?.where(
                              (element) => element.type == ItemType.DISTRICT) ??
                      [];
                  final municipalitiesFromResponse = s.searchOptionsdata.items
                          ?.where((element) =>
                              element.type == ItemType.MUNICIPALITY) ??
                      [];
                  List<PradeshName>? provinces = [];
                  List<DistrictsName>? districts = [];
                  List<MunicipalityName>? municipalities = [];

                  if (provinceFromResponse.isNotEmpty) {
                    provinces = provinceFromResponse.first.data
                        .cast<Map<String, dynamic>>()
                        .map((e) => PradeshName.fromJson(e))
                        .toList();
                  }
                  if (districtsFromResponse.isNotEmpty) {
                    final districtMaps = districtsFromResponse.first.data
                        .cast<Map<String, dynamic>>();

                    districts = districtMaps.map((e) {
                      // debugPrint(e.toString());
                      return DistrictsName.fromJson(e);
                    }).toList();
                  }
                  if (municipalitiesFromResponse.isNotEmpty) {
                    municipalities = municipalitiesFromResponse.first.data
                        .cast<Map<String, dynamic>>()
                        .map((e) => MunicipalityName.fromJson(e))
                        .toList();
                  }

                  //Search province, district and municipality list

                  return ListView(
                    children: [
                      buildPradeshDropDown(provinces: provinces),
                      buildDistrictDropDownList(
                          districts:
                              selectedProvinceId == null ? [] : districts,
                          provinceId: selectedProvinceId),
                      buildMunicipalityDropDownList(
                          municipalities:
                              selectedDistrictId == null ? [] : municipalities,
                          districtId: selectedDistrictId),
                      TextButton(
                          onPressed: selectedMunicipalityId == null
                              ? null
                              : () async {
                                  BlocProvider.of<SearchDetailBloc>(
                                          buildcontext)
                                      .add(SearchDetailEvent.loadSearchData(
                                          palikaId:
                                              selectedMunicipalityId ?? 0));
                                },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "खोज्नुहोस्",
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.search, color: Colors.white)
                            ],
                          )),
                    ],
                  );
                },
                searchDataLoading: (s) =>
                    const Center(child: CircularProgressIndicator()),
                searchDataLoadFailure: (s) => Center(
                      child: Column(
                        children: [
                          const Text("No connection.Try again"),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.restart_alt))
                        ],
                      ),
                    ),
                searchDataLoadSuccess: (s) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              s.searchDataResponseModel.data[0]
                                  .municipalityName,
                              style: const TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: s.searchDataResponseModel.data.length,
                          itemBuilder: (context, index) {
                            return candidateCardFrom(
                                candidate:
                                    s.searchDataResponseModel.data[index]);
                          },
                        ),
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }

  Widget buildPradeshDropDown(
      {List<PradeshName> provinces = const [],
      ValueChanged<PradeshName>? onChanged}) {
    String? defaultValue = "प्रदेश";
    // int updateProvinceId = 1;
    return DropdownButtonFormField(
      decoration:
          const InputDecoration(contentPadding: EdgeInsets.only(left: 50)),
      // value: "Please select some value",
      hint: Center(child: Text(defaultValue)),
      items: provinces
          .map((e) => DropdownMenuItem<String>(
                value: e.pradeshId.toString(),
                child: Text(e.pradeshName),
              ))
          .toList(),
      onChanged: (String? provinceId) {
        if (provinceId != null) {
          if (!mounted) return;

          _districtKey.currentState?.reset();
          _municipalityKey.currentState?.reset();

          setState(() {
            selectedProvinceId = int.tryParse(provinceId);

            selectedDistrictId = null;
            selectedMunicipalityId = null;
          });
        }
      },
    );
  }

  Widget buildDistrictDropDownList(
      {List<DistrictsName> districts = const [], int? provinceId}) {
    var districtsOfSelectedProvince = districts;

    if (provinceId != null && districts.isNotEmpty) {
      districtsOfSelectedProvince = districts
          .where((district) => district.pradeshId == provinceId)
          .toList();
    }

    return DropdownButtonFormField(
        key: _districtKey,
        decoration:
            const InputDecoration(contentPadding: EdgeInsets.only(left: 50)),
        // value: "Please select some value",
        hint: const Center(child: Text("जिल्ला")),
        items: districtsOfSelectedProvince
            .map((e) => DropdownMenuItem<String>(
                  value: e.districtId.toString(),
                  child: Text(e.districtName),
                ))
            .toList(),
        onChanged: (String? districtId) {
          if (districtId != null) {
            if (!mounted) return;

            // _districtKey.currentState?.reset();
            _municipalityKey.currentState?.reset();

            setState(() {
              // selectedProvinceId = null;
              selectedDistrictId = int.tryParse(districtId);

              // selectedMunicipalityId = null;
            });
          }
        });
  }

  Widget buildMunicipalityDropDownList(
      {List<MunicipalityName> municipalities = const [], int? districtId}) {
    var municipalitiesOfSelectedDistrict = municipalities;
    if (districtId != null && municipalities.isNotEmpty) {
      municipalitiesOfSelectedDistrict = municipalities
          .where((municipality) => municipality.districtId == districtId)
          .toList();
    }
    return DropdownButtonFormField(
        key: _municipalityKey,
        decoration:
            const InputDecoration(contentPadding: EdgeInsets.only(left: 50)),
        // value: "Please select some value",
        hint: const Center(child: Text("नगरपालिका वा गाउँपालिका")),
        items: municipalitiesOfSelectedDistrict
            .map((e) => DropdownMenuItem<String>(
                  value: e.municipalityId.toString(),
                  child: Text(e.municipalityName),
                ))
            .toList(),
        onChanged: (String? districtId) {
          if (districtId != null) {
            if (!mounted) return;
            // _districtKey.currentState?.reset();

            setState(() {
              // selectedDistrictId = int.tryParse(districtId);
              selectedMunicipalityId = int.tryParse(districtId);
              // selectedDistrictId = null;
            });
          }
        });
  }
}
