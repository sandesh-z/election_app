import 'package:election_app/features/home/domain/entities/DistrictWithType/district_with_type.dart';
import 'package:election_app/features/home/domain/entities/HomeResponse/home_response.dart';
import 'package:election_app/features/home/domain/entities/MunicipalityWithType/municipality_with_type.dart';
import 'package:election_app/features/home/domain/entities/PradeshWithType/pradesh_with_type.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/constants/item_type.dart';

class HomePageData extends Equatable {
  PradeshWithType? pradesh;
  DistrictWithType? district;
  MunicipalityWithType? municipality;

  HomePageData({
    this.pradesh,
    this.district,
    this.municipality,
  });

  factory HomePageData.from({required HomeResponse response}) {
    PradeshWithType? pradesh;
    DistrictWithType? district;
    MunicipalityWithType? municipality;

    final items = response.items;

    final pradeshList =
        items.where((element) => element.type == ItemType.PRADESH);
    final districtList =
        items.where((element) => element.type == ItemType.DISTRICT);
    final municipalityList =
        items.where((element) => element.type == ItemType.MUNICIPALITY);

    if (pradeshList.isNotEmpty) {
      pradesh = pradeshList.first;
    }

    if (districtList.isNotEmpty) {
      district = districtList.first;
    }

    if (municipalityList.isNotEmpty) {
      municipality = municipalityList.first;
    }

    return HomePageData(
        pradesh: pradesh, district: district, municipality: municipality);
  }
  @override
  List<Object?> get props => [pradesh, district, municipality];
}
