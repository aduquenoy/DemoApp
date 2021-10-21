// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherStateLoading loading() {
    return const _WeatherStateLoading();
  }

  _WeatherStateLoaded loaded({required ForecastModel forecast}) {
    return _WeatherStateLoaded(
      forecast: forecast,
    );
  }

  _WeatherStateError error({required String message}) {
    return _WeatherStateError(
      message: message,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ForecastModel forecast) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ForecastModel forecast)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$WeatherStateLoadingCopyWith<$Res> {
  factory _$WeatherStateLoadingCopyWith(_WeatherStateLoading value,
          $Res Function(_WeatherStateLoading) then) =
      __$WeatherStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateLoadingCopyWith<$Res> {
  __$WeatherStateLoadingCopyWithImpl(
      _WeatherStateLoading _value, $Res Function(_WeatherStateLoading) _then)
      : super(_value, (v) => _then(v as _WeatherStateLoading));

  @override
  _WeatherStateLoading get _value => super._value as _WeatherStateLoading;
}

/// @nodoc

class _$_WeatherStateLoading implements _WeatherStateLoading {
  const _$_WeatherStateLoading();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ForecastModel forecast) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ForecastModel forecast)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateLoading implements WeatherState {
  const factory _WeatherStateLoading() = _$_WeatherStateLoading;
}

/// @nodoc
abstract class _$WeatherStateLoadedCopyWith<$Res> {
  factory _$WeatherStateLoadedCopyWith(
          _WeatherStateLoaded value, $Res Function(_WeatherStateLoaded) then) =
      __$WeatherStateLoadedCopyWithImpl<$Res>;
  $Res call({ForecastModel forecast});
}

/// @nodoc
class __$WeatherStateLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateLoadedCopyWith<$Res> {
  __$WeatherStateLoadedCopyWithImpl(
      _WeatherStateLoaded _value, $Res Function(_WeatherStateLoaded) _then)
      : super(_value, (v) => _then(v as _WeatherStateLoaded));

  @override
  _WeatherStateLoaded get _value => super._value as _WeatherStateLoaded;

  @override
  $Res call({
    Object? forecast = freezed,
  }) {
    return _then(_WeatherStateLoaded(
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastModel,
    ));
  }
}

/// @nodoc

class _$_WeatherStateLoaded implements _WeatherStateLoaded {
  const _$_WeatherStateLoaded({required this.forecast});

  @override
  final ForecastModel forecast;

  @override
  String toString() {
    return 'WeatherState.loaded(forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherStateLoaded &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(forecast);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateLoadedCopyWith<_WeatherStateLoaded> get copyWith =>
      __$WeatherStateLoadedCopyWithImpl<_WeatherStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ForecastModel forecast) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ForecastModel forecast)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateLoaded implements WeatherState {
  const factory _WeatherStateLoaded({required ForecastModel forecast}) =
      _$_WeatherStateLoaded;

  ForecastModel get forecast => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeatherStateLoadedCopyWith<_WeatherStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherStateErrorCopyWith<$Res> {
  factory _$WeatherStateErrorCopyWith(
          _WeatherStateError value, $Res Function(_WeatherStateError) then) =
      __$WeatherStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$WeatherStateErrorCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateErrorCopyWith<$Res> {
  __$WeatherStateErrorCopyWithImpl(
      _WeatherStateError _value, $Res Function(_WeatherStateError) _then)
      : super(_value, (v) => _then(v as _WeatherStateError));

  @override
  _WeatherStateError get _value => super._value as _WeatherStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_WeatherStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherStateError implements _WeatherStateError {
  const _$_WeatherStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherStateError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateErrorCopyWith<_WeatherStateError> get copyWith =>
      __$WeatherStateErrorCopyWithImpl<_WeatherStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ForecastModel forecast) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ForecastModel forecast)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateLoaded value) loaded,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateLoaded value)? loaded,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateError implements WeatherState {
  const factory _WeatherStateError({required String message}) =
      _$_WeatherStateError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WeatherStateErrorCopyWith<_WeatherStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
