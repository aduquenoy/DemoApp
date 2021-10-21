import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherplay/state/stateNotifier/location_notifier.dart';
import 'package:weatherplay/state/stateNotifier/weather_notifier.dart';
import 'package:weatherplay/data/repository/location_repository.dart';
import 'package:weatherplay/data/repository/weather_repository.dart';

final _locationRepositoryProvider = Provider<IGeolocationRepository>((ref) => GeolocationRepository());
final locationNotifierProvider = StateNotifierProvider<LocationNotifier>((ref) => LocationNotifier(ref.watch(_locationRepositoryProvider)));

final _weatherRepositoryProvider = Provider<IWeatherRepository>((ref) => WeatherRepository());
final weatherNotifierProvider = StateNotifierProvider<WeatherNotifier>((ref) => WeatherNotifier(ref.watch(_weatherRepositoryProvider), ref.watch(locationNotifierProvider)));