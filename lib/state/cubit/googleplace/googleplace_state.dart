part of 'googleplace_cubit.dart';

abstract class GoogleplaceState extends Equatable {}

class GoogleplaceLoading extends GoogleplaceState {
  @override
  List<Object?> get props => [];
}

class GoogleplaceLoaded extends GoogleplaceState {
  final List<PlaceSearchModel> places;
  GoogleplaceLoaded({required this.places});

  @override
  List<Object?> get props => [places];
}

class GoogleplaceError extends GoogleplaceState {
  final String error;
  GoogleplaceError({required this.error});

  @override
  List<Object?> get props => [error];
}