import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class WeatherModel extends Equatable {
  final int id;
  final String description;
  const WeatherModel({required this.id, required this.description});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  @override
  List<Object?> get props => [id, description];
}