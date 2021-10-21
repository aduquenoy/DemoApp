import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'placesearch.g.dart';

@JsonSerializable()
class PlaceSearchModel  extends Equatable {

  final String description;
  final String place_id;
  PlaceSearchModel({required this.description, required this.place_id});

  factory PlaceSearchModel.fromJson(Map<String, dynamic> json) => _$PlaceSearchModelFromJson(json);

  @override
  List<Object?> get props => [description, place_id];
}