import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.g.dart';

@JsonSerializable()
class MainModel extends Equatable {
  final double temp;
  final double temp_min;
  final double temp_max;
  final int humidity;

  const MainModel({
    required this.temp,
    required this.temp_min,
    required this.temp_max,
    required this.humidity,
  });

  factory MainModel.fromJson(Map<String, dynamic> json) =>
      _$MainModelFromJson(json);

  @override
  List<Object?> get props => [temp, temp_min, temp_max, humidity];
}
