import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherplay/data/repository/location_repository.dart';
import 'package:weatherplay/data/model/location.dart';

part 'location_notifier.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.splashStart() = _LocationStateLoading;
  const factory LocationState.splashRun() = _LocationStateSplash;
  const factory LocationState.loaded({required GpsPoint location}) = _LocationStateLoaded;
  const factory LocationState.error() = _LocationStateError;
}

class LocationNotifier extends StateNotifier<LocationState> {
  
  final IGeolocationRepository _locationRepository;
  LocationNotifier(this._locationRepository) : super(const LocationState.splashStart()) {getLocation(splash: true);}

  Future<void> getLocation({required bool splash}) async {
    try {
      final gpsDisplay = await _locationRepository.fetchLocation();
      
      if(splash) {
        await Future.delayed(const Duration(milliseconds: 1500));
        state = const LocationState.splashRun();
        await Future.delayed(const Duration(seconds: 1));
      }
      
      state = LocationState.loaded(location: gpsDisplay);
    } catch (e) {
      state = const LocationState.error();
    }
  }
}