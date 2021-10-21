// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationStateLoading splashStart() {
    return const _LocationStateLoading();
  }

  _LocationStateSplash splashRun() {
    return const _LocationStateSplash();
  }

  _LocationStateLoaded loaded({required GpsPoint location}) {
    return _LocationStateLoaded(
      location: location,
    );
  }

  _LocationStateError error() {
    return const _LocationStateError();
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashStart,
    required TResult Function() splashRun,
    required TResult Function(GpsPoint location) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashStart,
    TResult Function()? splashRun,
    TResult Function(GpsPoint location)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStateLoading value) splashStart,
    required TResult Function(_LocationStateSplash value) splashRun,
    required TResult Function(_LocationStateLoaded value) loaded,
    required TResult Function(_LocationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStateLoading value)? splashStart,
    TResult Function(_LocationStateSplash value)? splashRun,
    TResult Function(_LocationStateLoaded value)? loaded,
    TResult Function(_LocationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$LocationStateLoadingCopyWith<$Res> {
  factory _$LocationStateLoadingCopyWith(_LocationStateLoading value,
          $Res Function(_LocationStateLoading) then) =
      __$LocationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationStateLoadingCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateLoadingCopyWith<$Res> {
  __$LocationStateLoadingCopyWithImpl(
      _LocationStateLoading _value, $Res Function(_LocationStateLoading) _then)
      : super(_value, (v) => _then(v as _LocationStateLoading));

  @override
  _LocationStateLoading get _value => super._value as _LocationStateLoading;
}

/// @nodoc

class _$_LocationStateLoading implements _LocationStateLoading {
  const _$_LocationStateLoading();

  @override
  String toString() {
    return 'LocationState.splashStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashStart,
    required TResult Function() splashRun,
    required TResult Function(GpsPoint location) loaded,
    required TResult Function() error,
  }) {
    return splashStart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashStart,
    TResult Function()? splashRun,
    TResult Function(GpsPoint location)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (splashStart != null) {
      return splashStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStateLoading value) splashStart,
    required TResult Function(_LocationStateSplash value) splashRun,
    required TResult Function(_LocationStateLoaded value) loaded,
    required TResult Function(_LocationStateError value) error,
  }) {
    return splashStart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStateLoading value)? splashStart,
    TResult Function(_LocationStateSplash value)? splashRun,
    TResult Function(_LocationStateLoaded value)? loaded,
    TResult Function(_LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (splashStart != null) {
      return splashStart(this);
    }
    return orElse();
  }
}

abstract class _LocationStateLoading implements LocationState {
  const factory _LocationStateLoading() = _$_LocationStateLoading;
}

/// @nodoc
abstract class _$LocationStateSplashCopyWith<$Res> {
  factory _$LocationStateSplashCopyWith(_LocationStateSplash value,
          $Res Function(_LocationStateSplash) then) =
      __$LocationStateSplashCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationStateSplashCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateSplashCopyWith<$Res> {
  __$LocationStateSplashCopyWithImpl(
      _LocationStateSplash _value, $Res Function(_LocationStateSplash) _then)
      : super(_value, (v) => _then(v as _LocationStateSplash));

  @override
  _LocationStateSplash get _value => super._value as _LocationStateSplash;
}

/// @nodoc

class _$_LocationStateSplash implements _LocationStateSplash {
  const _$_LocationStateSplash();

  @override
  String toString() {
    return 'LocationState.splashRun()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationStateSplash);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashStart,
    required TResult Function() splashRun,
    required TResult Function(GpsPoint location) loaded,
    required TResult Function() error,
  }) {
    return splashRun();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashStart,
    TResult Function()? splashRun,
    TResult Function(GpsPoint location)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (splashRun != null) {
      return splashRun();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStateLoading value) splashStart,
    required TResult Function(_LocationStateSplash value) splashRun,
    required TResult Function(_LocationStateLoaded value) loaded,
    required TResult Function(_LocationStateError value) error,
  }) {
    return splashRun(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStateLoading value)? splashStart,
    TResult Function(_LocationStateSplash value)? splashRun,
    TResult Function(_LocationStateLoaded value)? loaded,
    TResult Function(_LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (splashRun != null) {
      return splashRun(this);
    }
    return orElse();
  }
}

abstract class _LocationStateSplash implements LocationState {
  const factory _LocationStateSplash() = _$_LocationStateSplash;
}

/// @nodoc
abstract class _$LocationStateLoadedCopyWith<$Res> {
  factory _$LocationStateLoadedCopyWith(_LocationStateLoaded value,
          $Res Function(_LocationStateLoaded) then) =
      __$LocationStateLoadedCopyWithImpl<$Res>;
  $Res call({GpsPoint location});
}

/// @nodoc
class __$LocationStateLoadedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateLoadedCopyWith<$Res> {
  __$LocationStateLoadedCopyWithImpl(
      _LocationStateLoaded _value, $Res Function(_LocationStateLoaded) _then)
      : super(_value, (v) => _then(v as _LocationStateLoaded));

  @override
  _LocationStateLoaded get _value => super._value as _LocationStateLoaded;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_LocationStateLoaded(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GpsPoint,
    ));
  }
}

/// @nodoc

class _$_LocationStateLoaded implements _LocationStateLoaded {
  const _$_LocationStateLoaded({required this.location});

  @override
  final GpsPoint location;

  @override
  String toString() {
    return 'LocationState.loaded(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationStateLoaded &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LocationStateLoadedCopyWith<_LocationStateLoaded> get copyWith =>
      __$LocationStateLoadedCopyWithImpl<_LocationStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashStart,
    required TResult Function() splashRun,
    required TResult Function(GpsPoint location) loaded,
    required TResult Function() error,
  }) {
    return loaded(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashStart,
    TResult Function()? splashRun,
    TResult Function(GpsPoint location)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStateLoading value) splashStart,
    required TResult Function(_LocationStateSplash value) splashRun,
    required TResult Function(_LocationStateLoaded value) loaded,
    required TResult Function(_LocationStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStateLoading value)? splashStart,
    TResult Function(_LocationStateSplash value)? splashRun,
    TResult Function(_LocationStateLoaded value)? loaded,
    TResult Function(_LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LocationStateLoaded implements LocationState {
  const factory _LocationStateLoaded({required GpsPoint location}) =
      _$_LocationStateLoaded;

  GpsPoint get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LocationStateLoadedCopyWith<_LocationStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationStateErrorCopyWith<$Res> {
  factory _$LocationStateErrorCopyWith(
          _LocationStateError value, $Res Function(_LocationStateError) then) =
      __$LocationStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationStateErrorCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateErrorCopyWith<$Res> {
  __$LocationStateErrorCopyWithImpl(
      _LocationStateError _value, $Res Function(_LocationStateError) _then)
      : super(_value, (v) => _then(v as _LocationStateError));

  @override
  _LocationStateError get _value => super._value as _LocationStateError;
}

/// @nodoc

class _$_LocationStateError implements _LocationStateError {
  const _$_LocationStateError();

  @override
  String toString() {
    return 'LocationState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashStart,
    required TResult Function() splashRun,
    required TResult Function(GpsPoint location) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashStart,
    TResult Function()? splashRun,
    TResult Function(GpsPoint location)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationStateLoading value) splashStart,
    required TResult Function(_LocationStateSplash value) splashRun,
    required TResult Function(_LocationStateLoaded value) loaded,
    required TResult Function(_LocationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationStateLoading value)? splashStart,
    TResult Function(_LocationStateSplash value)? splashRun,
    TResult Function(_LocationStateLoaded value)? loaded,
    TResult Function(_LocationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LocationStateError implements LocationState {
  const factory _LocationStateError() = _$_LocationStateError;
}
