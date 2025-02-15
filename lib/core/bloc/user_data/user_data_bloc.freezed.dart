// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userDataStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userDataStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userDataStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(userDataStarted value) userDataStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(userDataStarted value)? userDataStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(userDataStarted value)? userDataStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataEventCopyWith<$Res> {
  factory $UserDataEventCopyWith(
          UserDataEvent value, $Res Function(UserDataEvent) then) =
      _$UserDataEventCopyWithImpl<$Res, UserDataEvent>;
}

/// @nodoc
class _$UserDataEventCopyWithImpl<$Res, $Val extends UserDataEvent>
    implements $UserDataEventCopyWith<$Res> {
  _$UserDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$userDataStartedImplCopyWith<$Res> {
  factory _$$userDataStartedImplCopyWith(_$userDataStartedImpl value,
          $Res Function(_$userDataStartedImpl) then) =
      __$$userDataStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userDataStartedImplCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$userDataStartedImpl>
    implements _$$userDataStartedImplCopyWith<$Res> {
  __$$userDataStartedImplCopyWithImpl(
      _$userDataStartedImpl _value, $Res Function(_$userDataStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$userDataStartedImpl implements userDataStarted {
  const _$userDataStartedImpl();

  @override
  String toString() {
    return 'UserDataEvent.userDataStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userDataStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userDataStarted,
  }) {
    return userDataStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userDataStarted,
  }) {
    return userDataStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userDataStarted,
    required TResult orElse(),
  }) {
    if (userDataStarted != null) {
      return userDataStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(userDataStarted value) userDataStarted,
  }) {
    return userDataStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(userDataStarted value)? userDataStarted,
  }) {
    return userDataStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(userDataStarted value)? userDataStarted,
    required TResult orElse(),
  }) {
    if (userDataStarted != null) {
      return userDataStarted(this);
    }
    return orElse();
  }
}

abstract class userDataStarted implements UserDataEvent {
  const factory userDataStarted() = _$userDataStartedImpl;
}

/// @nodoc
mixin _$UserDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userDataInitial,
    required TResult Function(int budget) userDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userDataInitial,
    TResult? Function(int budget)? userDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userDataInitial,
    TResult Function(int budget)? userDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(userDataInitial value) userDataInitial,
    required TResult Function(userDataLoaded value) userDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(userDataInitial value)? userDataInitial,
    TResult? Function(userDataLoaded value)? userDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(userDataInitial value)? userDataInitial,
    TResult Function(userDataLoaded value)? userDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res, UserDataState>;
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res, $Val extends UserDataState>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$userDataInitialImplCopyWith<$Res> {
  factory _$$userDataInitialImplCopyWith(_$userDataInitialImpl value,
          $Res Function(_$userDataInitialImpl) then) =
      __$$userDataInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userDataInitialImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$userDataInitialImpl>
    implements _$$userDataInitialImplCopyWith<$Res> {
  __$$userDataInitialImplCopyWithImpl(
      _$userDataInitialImpl _value, $Res Function(_$userDataInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$userDataInitialImpl implements userDataInitial {
  const _$userDataInitialImpl();

  @override
  String toString() {
    return 'UserDataState.userDataInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userDataInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userDataInitial,
    required TResult Function(int budget) userDataLoaded,
  }) {
    return userDataInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userDataInitial,
    TResult? Function(int budget)? userDataLoaded,
  }) {
    return userDataInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userDataInitial,
    TResult Function(int budget)? userDataLoaded,
    required TResult orElse(),
  }) {
    if (userDataInitial != null) {
      return userDataInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(userDataInitial value) userDataInitial,
    required TResult Function(userDataLoaded value) userDataLoaded,
  }) {
    return userDataInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(userDataInitial value)? userDataInitial,
    TResult? Function(userDataLoaded value)? userDataLoaded,
  }) {
    return userDataInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(userDataInitial value)? userDataInitial,
    TResult Function(userDataLoaded value)? userDataLoaded,
    required TResult orElse(),
  }) {
    if (userDataInitial != null) {
      return userDataInitial(this);
    }
    return orElse();
  }
}

abstract class userDataInitial implements UserDataState {
  const factory userDataInitial() = _$userDataInitialImpl;
}

/// @nodoc
abstract class _$$userDataLoadedImplCopyWith<$Res> {
  factory _$$userDataLoadedImplCopyWith(_$userDataLoadedImpl value,
          $Res Function(_$userDataLoadedImpl) then) =
      __$$userDataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int budget});
}

/// @nodoc
class __$$userDataLoadedImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$userDataLoadedImpl>
    implements _$$userDataLoadedImplCopyWith<$Res> {
  __$$userDataLoadedImplCopyWithImpl(
      _$userDataLoadedImpl _value, $Res Function(_$userDataLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
  }) {
    return _then(_$userDataLoadedImpl(
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$userDataLoadedImpl implements userDataLoaded {
  const _$userDataLoadedImpl({required this.budget});

  @override
  final int budget;

  @override
  String toString() {
    return 'UserDataState.userDataLoaded(budget: $budget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userDataLoadedImpl &&
            (identical(other.budget, budget) || other.budget == budget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, budget);

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$userDataLoadedImplCopyWith<_$userDataLoadedImpl> get copyWith =>
      __$$userDataLoadedImplCopyWithImpl<_$userDataLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userDataInitial,
    required TResult Function(int budget) userDataLoaded,
  }) {
    return userDataLoaded(budget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userDataInitial,
    TResult? Function(int budget)? userDataLoaded,
  }) {
    return userDataLoaded?.call(budget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userDataInitial,
    TResult Function(int budget)? userDataLoaded,
    required TResult orElse(),
  }) {
    if (userDataLoaded != null) {
      return userDataLoaded(budget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(userDataInitial value) userDataInitial,
    required TResult Function(userDataLoaded value) userDataLoaded,
  }) {
    return userDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(userDataInitial value)? userDataInitial,
    TResult? Function(userDataLoaded value)? userDataLoaded,
  }) {
    return userDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(userDataInitial value)? userDataInitial,
    TResult Function(userDataLoaded value)? userDataLoaded,
    required TResult orElse(),
  }) {
    if (userDataLoaded != null) {
      return userDataLoaded(this);
    }
    return orElse();
  }
}

abstract class userDataLoaded implements UserDataState {
  const factory userDataLoaded({required final int budget}) =
      _$userDataLoadedImpl;

  int get budget;

  /// Create a copy of UserDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$userDataLoadedImplCopyWith<_$userDataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
