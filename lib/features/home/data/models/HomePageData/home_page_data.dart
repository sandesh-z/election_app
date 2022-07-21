import 'package:election_app/features/home/domain/entities/HomeResponse/home_response.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/constants/item_type.dart';
import '../../../domain/entities/district_details/district_name.dart';
import '../../../domain/entities/municipality_details/municipality_name.dart';
import '../../../domain/entities/pradesh_details/pradesh_name.dart';

class HomePageData {
  List<PradeshName>? provinces = [];
  List<DistrictsName>? districts = [];
  List<MunicipalityName>? municipalities = [];
  HomePageData({
    this.provinces,
    this.districts,
    this.municipalities,
  });
}
  // factory HomePageData.from({required HomeResponse response}) {
    // PradeshWithType? pradesh;
    // DistrictWithType? district;
    // MunicipalityWithType? municipality;

    // final items = response.items;

    // final provinceFromResponse =
    //     items?.where((element) => element.type == ItemType.PRADESH) ?? [];
    // final districtsFromResponse =
    //     items?.where((element) => element.type == ItemType.DISTRICT) ?? [];
    // final municipalitiesFromResponse =
    //     items?.where((element) => element.type == ItemType.MUNICIPALITY) ?? [];

   

//     if (provinceFromResponse.isNotEmpty) {
//       provinces = provinceFromResponse.first.data
//           .cast<Map<String, dynamic>>()
//           .map((e) => PradeshName.fromJson(e))
//           .toList();
//     }
//     if (districtsFromResponse.isNotEmpty) {
//       final districtMaps =
//           districtsFromResponse.first.data.cast<Map<String, dynamic>>();

//       districts = districtMaps.map((e) {
//         // debugPrint(e.toString());
//         return DistrictsName.fromJson(e);
//       }).toList();
//     }
//     if (municipalitiesFromResponse.isNotEmpty) {
//       municipalities = municipalitiesFromResponse.first.data
//           .cast<Map<String, dynamic>>()
//           .map((e) => MunicipalityName.fromJson(e))
//           .toList();
//     }

//     return HomePageData(
//         provinces: provinces,district: districts,municipalities: municipalities);
//   }
//   @override
//   List<Object?> get props => [pradesh, district, municipality];
// }
