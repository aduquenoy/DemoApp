import 'package:equatable/equatable.dart';

class GpsPoint extends Equatable {

  final double longitude;
  final double latitude;

  GpsPoint({required this.longitude, required this.latitude});

  @override
  List<Object?> get props => [longitude, latitude];
}