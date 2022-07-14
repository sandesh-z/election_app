import 'package:election_app/features/home/domain/constants/item_type.dart';
import 'package:election_app/features/home/domain/entities/district_details/district_name.dart';
import 'package:election_app/features/home/domain/entities/municipality_details/municipality_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/pradesh_details/pradesh_name.dart';
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
              // print(s.homepageresponsedata!.items![1].data.length);
              final districtLength =
                  s.homepageresponsedata!.items![1].data.length;
              final homeData = s.homepageresponsedata;
              // final provinceId =
              //     s.homepageresponsedata!.items![1].data[60].provinceId;
              // print(provinceId);

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
                provinces = provinceFromResponse.first.data.cast<PradeshName>();
              }
              if (districtsFromResponse.isNotEmpty) {
                districts =
                    districtsFromResponse.first.data.cast<DistrictsName>();
                // print(districts);
              }
              if (municipalitiesFromResponse.isNotEmpty) {
                municipalities = municipalitiesFromResponse.first.data
                    .cast<MunicipalityName>();
              }

              return ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  const SizedBox(height: 20),
                  buildPradeshDropDown(provinces: provinces),
                  buildDistrictDropDownList(homeData, districtLength),
                  buildTestWidget(getPradeshName(), getDistrictName()),
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

  Widget buildPradeshDropDown(
      {List<PradeshName> provinces = const [],
      ValueChanged<PradeshName>? onChanged}) {
    String? defaultValue = "Please select Province";
    // int updateProvinceId = 1;
    return DropdownButtonFormField(
      decoration:
          const InputDecoration(contentPadding: EdgeInsets.only(left: 50)),
      // value: "Please select some value",
      hint: Center(child: Text(defaultValue)),
      items: provinces
          .map((e) => DropdownMenuItem<String>(
                child: Text(e.pradeshName),
                value: e.pradeshName,
              ))
          .toList(),
      onChanged: (item) {
        setState(() {
          pradeshName = provinces[0].pradeshName;
          // updateProvinceId++;
        });
      },
    );
  }

  Widget buildDistrictDropDownList(s, int len) {
    List<String> listItems = [];
    String? itemdummy = s!.items![1].data[0].pradeshName;
    String? selectedItem = itemdummy;
    // if (districtprovinceId == 2) {
    //   selectedItem = s!.items![1].data[15].pradeshName;
    // }
    for (int i = 0; i < 77; i++) {
      districtprovinceId = s.items![1].data[i].provinceId;
      // print(districtprovinceId);
      if (districtprovinceId == 1) {
        listItems.add(s!.items![1].data[i].pradeshName);
        // } else if (districtprovinceId == 2) {
        //   // listItems.clear();

        //   listItems.add(s!.items![1].data[i].pradeshName);
        // }
      }
    }

    return Container(
        height: 70,
        width: 200,
        // padding: const EdgeInsets.all(16),
        child: Card(
          color: Colors.grey[100],
          child: DropdownButtonFormField<String>(
            isExpanded: true,
            dropdownColor: Colors.blue[50],
            // menuMaxHeight: 200,
            // decoration: InputDecoration.collapsed(hintText: ''),
            value: selectedItem,
            // disabledHint: Text('pradesh'),
            items: listItems
                .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )))
                .toList(),
            onSaved: (item) => setState(() {
              selectedItem = item;
            }),
            onChanged: (item) => setState(() {
              selectedItem = item;
              districtName = item!;
            }),
            icon: const Icon(
              Icons.expand_more,
              size: 30,
            ),
          ),
        ));
  }
}
