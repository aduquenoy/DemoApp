import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weatherplay/data/model/placesearch.dart';
import 'package:weatherplay/data/repository/googleplace_repository.dart';

part 'googleplace_state.dart';

class GoogleplaceCubit extends Cubit<GoogleplaceState> {
  final _placesRepository = PlacesearchRepository();
  GoogleplaceCubit() : super(GoogleplaceLoading());

  void searchPlaces(String place, String loc) async {
    try {
      //await Future.delayed(const Duration(seconds: 3));
      final googleplaceDisplay = await _placesRepository.fetchAutocomplete(place, loc);
      emit(GoogleplaceLoaded(places: googleplaceDisplay));
    } catch (e) {
      emit(GoogleplaceError(error: e.toString()));
    }
  }
}
