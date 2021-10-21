import 'package:equatable/equatable.dart';
import 'package:weatherplay/data/model/main.dart';
import 'package:weatherplay/data/model/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast.g.dart';

@JsonSerializable()
class ForecastModel extends Equatable {
  final List<WeatherModel> weather;
  final MainModel main;
  final String name;

  ForecastModel({
    required this.weather,
    required this.main,
    required this.name,
  });

  factory ForecastModel.fromJson(Map<String, dynamic> json) => _$ForecastModelFromJson(json);

  @override
  List<Object?> get props => [weather, main, name];
}