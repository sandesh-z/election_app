import '../../domain/constants/item_type.dart';
import '../../domain/entities/district_details/district_name.dart';
import '../../domain/entities/municipality_details/municipality_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/no_params.dart';
import '../../../../injection.dart';
import '../../domain/entities/pradesh_details/pradesh_name.dart';
import '../../domain/usecases/get_searchpage_data_usecase.dart';
import '../bloc/home_bloc.dart';

class ElectionHomePage extends StatefulWidget {
  ElectionHomePage({Key? key}) : super(key: key);

  @override
  State<ElectionHomePage> createState() => _ElectionHomePageState();
}

class _ElectionHomePageState extends State<ElectionHomePage> {
  // List<String> listItems = ['item 1', 'item 2', 'item 3', 'item 4'];
  // String? selectedItem = 'item 1';
  int? districtprovinceId;
  String? pradeshName = "";
  String? districtName = "";

  String? getPradeshName() {
    return pradeshName;
  }

  String? getDistrictName() {
    return districtName;
  }

  int? selectedProvinceId, selectedDistrictId, selectedMunicipalityId;

  final GlobalKey<FormFieldState> _districtKey = GlobalKey<FormFieldState>(),
      _municipalityKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        // foregroundColor: Colors.white,
        // backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: 150,
              height: 100,
              child: Image.asset('assets/icons/logo.png'),
            ),
            const Spacer(),
            const Text(
              "स्थानीय तहको निर्वाचन २०७९",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.map(
              initial: (s) {},
              loading: (s) {},
              loadSuccess: (s) {},
              loadFailure: (s) {});
        },
        builder: (builderContet, state) {
          return state.map(
            initial: (s) => const CircularProgressIndicator(),
            loading: (s) => const CircularProgressIndicator(),
            loadSuccess: (s) {
              final districtLength =
                  s.homepageresponsedata!.items![1].data.length;
              final homeData = s.homepageresponsedata;

              final provinceFromResponse = s.homepageresponsedata?.items
                      ?.where((element) => element.type == ItemType.PRADESH) ??
                  [];
              final districtsFromResponse = s.homepageresponsedata?.items
                      ?.where((element) => element.type == ItemType.DISTRICT) ??
                  [];
              final municipalitiesFromResponse = s.homepageresponsedata?.items
                      ?.where(
                          (element) => element.type == ItemType.MUNICIPALITY) ??
                  [];

              List<PradeshName>? provinces = [];
              List<DistrictsName>? districts = [];
              List<MunicipalityName>? municipalities = [];

              List<String> onChangedValue = [];

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

              return ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  const SizedBox(height: 20),
                  buildPradeshDropDown(provinces: provinces),
                  const SizedBox(height: 20),
                  buildDistrictDropDownList(
                      districts: selectedProvinceId == null ? [] : districts,
                      provinceId: selectedProvinceId),
                  const SizedBox(height: 20),
                  buildMunicipalityDropDownList(
                      municipalities:
                          selectedDistrictId == null ? [] : municipalities,
                      districtId: selectedDistrictId),
                  const SizedBox(height: 20),
                  // buildTestWidget(getPradeshName(), getDistrictName()),
                  TextButton(
                      onPressed: selectedMunicipalityId == null
                          ? null
                          : () async {
                              final usecase = getIt<GetSearchPageDataUseCase>();

                              if (selectedMunicipalityId != null) {
                                final result = await usecase(SearchParams(
                                    palikaId: selectedMunicipalityId!));
                              }
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
            loadFailure: (s) => const Center(
              child: Text("No connection"),
            ),
          );
        },
      ),
    );
  }

  Widget buildTestWidget(String? pradeshName, String? districtName) {
    return Column(
      children: [
        Row(
          children: [
            Text("Province: ${pradeshName!}"),
          ],
        ),
        Row(
          children: [
            Text("District: ${districtName!}"),
          ],
        ),
      ],
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
        hint: Center(child: Text("जिल्ला")),
        items: districtsOfSelectedProvince
            .map((e) => DropdownMenuItem<String>(
                  child: Text(e.districtName),
                  value: e.districtId.toString(),
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
        hint: Center(child: Text("नगरपालिका वा गाउँपालिका")),
        items: municipalitiesOfSelectedDistrict
            .map((e) => DropdownMenuItem<String>(
                  child: Text(e.municipalityName),
                  value: e.municipalityId.toString(),
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
                child: Text(e.pradeshName),
                value: e.pradeshId.toString(),
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
}
