// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placesearch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceSearchModel _$PlaceSearchModelFromJson(Map<String, dynamic> json) {
  return PlaceSearchModel(
    description: json['description'] as String,
    place_id: json['place_id'] as String,
  );
}

Map<String, dynamic> _$PlaceSearchModelToJson(PlaceSearchModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'place_id': instance.place_id,
    };
