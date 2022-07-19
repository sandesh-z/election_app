import '../../domain/constants/item_type.dart';
import '../../domain/entities/district_details/district_name.dart';
import '../../domain/entities/municipality_details/municipality_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../domain/entities/pradesh_details/pradesh_name.dart';
import '../../domain/usecases/get_searchpage_data_usecase.dart';
import '../bloc/home_bloc/home_bloc.dart';

class ElectionHomePage extends StatefulWidget {
  const ElectionHomePage({Key? key}) : super(key: key);

  @override
  State<ElectionHomePage> createState() => _ElectionHomePageState();
}

class _ElectionHomePageState extends State<ElectionHomePage> {
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
            initial: (s) => const Center(child: CircularProgressIndicator()),
            loading: (s) => const Center(child: CircularProgressIndicator()),
            loadSuccess: (s) {
              // final districtLength =
              //     s.homepageresponsedata!.items![1].data.length;
              // final homeData = s.homepageresponsedata;

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

              // List<String> onChangedValue = [];

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

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: [
                        const SizedBox(height: 20),
                        buildPradeshDropDown(provinces: provinces),
                        const SizedBox(height: 20),
                        buildDistrictDropDownList(
                            districts:
                                selectedProvinceId == null ? [] : districts,
                            provinceId: selectedProvinceId),
                        const SizedBox(height: 20),
                        buildMunicipalityDropDownList(
                            municipalities: selectedDistrictId == null
                                ? []
                                : municipalities,
                            districtId: selectedDistrictId),
                        const SizedBox(height: 20),
                        TextButton(
                            onPressed: selectedMunicipalityId == null
                                ? null
                                : () async {
                                    final usecase =
                                        getIt<GetSearchPageDataUseCase>();

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
                    ),
                  ),
                  const Expanded(child: Text("Nothing to show")),
                ],
              );
            },
            loadFailure: (s) => Center(
              child: Column(
                children: [
                  const Text("No connection.Try again"),
                  IconButton(
                      onPressed: () {
                        BlocProvider.of<HomeBloc>(context)
                            .add(HomeEvent.loadHomePageData());
                      },
                      icon: const Icon(Icons.restart_alt))
                ],
              ),
            ),
          );
        },
      ),
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
}
