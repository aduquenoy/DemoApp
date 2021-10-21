// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainModel _$MainModelFromJson(Map<String, dynamic> json) {
  return MainModel(
    temp: (json['temp'] as num).toDouble(),
    temp_min: (json['temp_min'] as num).toDouble(),
    temp_max: (json['temp_max'] as num).toDouble(),
    humidity: json['humidity'] as int,
  );
}

Map<String, dynamic> _$MainModelToJson(MainModel instance) => <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'humidity': instance.humidity,
    };
