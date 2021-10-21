import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherplay/data/model/forecast.dart';
import 'package:weatherplay/data/repository/weather_repository.dart';
import 'package:weatherplay/state/stateNotifier/location_notifier.dart';

part 'weather_notifier.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = _WeatherStateLoading;
  const factory WeatherState.loaded({required ForecastModel forecast}) = _WeatherStateLoaded;
  const factory WeatherState.error({required String message}) = _WeatherStateError;
}

class WeatherNotifier extends StateNotifier<WeatherState> {

  final IWeatherRepository _weatherRepository;
  final LocationNotifier _locationNotifier;

  WeatherNotifier(this._weatherRepository, this._locationNotifier) : super(const WeatherState.loading()) {getWeather();}
  
  Future<void> getWeather({String? city, String? loc}) async {
    state = const WeatherState.loading();
    try {
      await _locationNotifier.state.maybeMap(loaded: (value) async {
        final weatherDisplay = await _weatherRepository.getForecast(city, loc, long: value.location.longitude, lat: value.location.latitude);
        state = WeatherState.loaded(forecast: weatherDisplay);
      }, orElse: () => null);
    } catch (e) {
      state = WeatherState.error(message: e.toString());
    }
  }
}