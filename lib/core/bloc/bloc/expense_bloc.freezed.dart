// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseFetchData,
    required TResult Function(ExpenseModel expense) expenseAddData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseFetchData,
    TResult? Function(ExpenseModel expense)? expenseAddData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseFetchData,
    TResult Function(ExpenseModel expense)? expenseAddData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseFetchData value) expenseFetchData,
    required TResult Function(expenseAddData value) expenseAddData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseFetchData value)? expenseFetchData,
    TResult? Function(expenseAddData value)? expenseAddData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseFetchData value)? expenseFetchData,
    TResult Function(expenseAddData value)? expenseAddData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseEventCopyWith<$Res> {
  factory $ExpenseEventCopyWith(
          ExpenseEvent value, $Res Function(ExpenseEvent) then) =
      _$ExpenseEventCopyWithImpl<$Res, ExpenseEvent>;
}

/// @nodoc
class _$ExpenseEventCopyWithImpl<$Res, $Val extends ExpenseEvent>
    implements $ExpenseEventCopyWith<$Res> {
  _$ExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$expenseFetchDataImplCopyWith<$Res> {
  factory _$$expenseFetchDataImplCopyWith(_$expenseFetchDataImpl value,
          $Res Function(_$expenseFetchDataImpl) then) =
      __$$expenseFetchDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$expenseFetchDataImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$expenseFetchDataImpl>
    implements _$$expenseFetchDataImplCopyWith<$Res> {
  __$$expenseFetchDataImplCopyWithImpl(_$expenseFetchDataImpl _value,
      $Res Function(_$expenseFetchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$expenseFetchDataImpl implements expenseFetchData {
  const _$expenseFetchDataImpl();

  @override
  String toString() {
    return 'ExpenseEvent.expenseFetchData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$expenseFetchDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseFetchData,
    required TResult Function(ExpenseModel expense) expenseAddData,
  }) {
    return expenseFetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseFetchData,
    TResult? Function(ExpenseModel expense)? expenseAddData,
  }) {
    return expenseFetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseFetchData,
    TResult Function(ExpenseModel expense)? expenseAddData,
    required TResult orElse(),
  }) {
    if (expenseFetchData != null) {
      return expenseFetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseFetchData value) expenseFetchData,
    required TResult Function(expenseAddData value) expenseAddData,
  }) {
    return expenseFetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseFetchData value)? expenseFetchData,
    TResult? Function(expenseAddData value)? expenseAddData,
  }) {
    return expenseFetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseFetchData value)? expenseFetchData,
    TResult Function(expenseAddData value)? expenseAddData,
    required TResult orElse(),
  }) {
    if (expenseFetchData != null) {
      return expenseFetchData(this);
    }
    return orElse();
  }
}

abstract class expenseFetchData implements ExpenseEvent {
  const factory expenseFetchData() = _$expenseFetchDataImpl;
}

/// @nodoc
abstract class _$$expenseAddDataImplCopyWith<$Res> {
  factory _$$expenseAddDataImplCopyWith(_$expenseAddDataImpl value,
          $Res Function(_$expenseAddDataImpl) then) =
      __$$expenseAddDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseModel expense});

  $ExpenseModelCopyWith<$Res> get expense;
}

/// @nodoc
class __$$expenseAddDataImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$expenseAddDataImpl>
    implements _$$expenseAddDataImplCopyWith<$Res> {
  __$$expenseAddDataImplCopyWithImpl(
      _$expenseAddDataImpl _value, $Res Function(_$expenseAddDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$expenseAddDataImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as ExpenseModel,
    ));
  }

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpenseModelCopyWith<$Res> get expense {
    return $ExpenseModelCopyWith<$Res>(_value.expense, (value) {
      return _then(_value.copyWith(expense: value));
    });
  }
}

/// @nodoc

class _$expenseAddDataImpl implements expenseAddData {
  const _$expenseAddDataImpl({required this.expense});

  @override
  final ExpenseModel expense;

  @override
  String toString() {
    return 'ExpenseEvent.expenseAddData(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$expenseAddDataImpl &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$expenseAddDataImplCopyWith<_$expenseAddDataImpl> get copyWith =>
      __$$expenseAddDataImplCopyWithImpl<_$expenseAddDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseFetchData,
    required TResult Function(ExpenseModel expense) expenseAddData,
  }) {
    return expenseAddData(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseFetchData,
    TResult? Function(ExpenseModel expense)? expenseAddData,
  }) {
    return expenseAddData?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseFetchData,
    TResult Function(ExpenseModel expense)? expenseAddData,
    required TResult orElse(),
  }) {
    if (expenseAddData != null) {
      return expenseAddData(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseFetchData value) expenseFetchData,
    required TResult Function(expenseAddData value) expenseAddData,
  }) {
    return expenseAddData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseFetchData value)? expenseFetchData,
    TResult? Function(expenseAddData value)? expenseAddData,
  }) {
    return expenseAddData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseFetchData value)? expenseFetchData,
    TResult Function(expenseAddData value)? expenseAddData,
    required TResult orElse(),
  }) {
    if (expenseAddData != null) {
      return expenseAddData(this);
    }
    return orElse();
  }
}

abstract class expenseAddData implements ExpenseEvent {
  const factory expenseAddData({required final ExpenseModel expense}) =
      _$expenseAddDataImpl;

  ExpenseModel get expense;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$expenseAddDataImplCopyWith<_$expenseAddDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function() expenseLoading,
    required TResult Function(List<ExpenseModel> expense) expenseLoaded,
    required TResult Function() expenseError,
    required TResult Function(String comment) expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function()? expenseLoading,
    TResult? Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult? Function()? expenseError,
    TResult? Function(String comment)? expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function()? expenseLoading,
    TResult Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult Function()? expenseError,
    TResult Function(String comment)? expenseAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(expenseLoading value) expenseLoading,
    required TResult Function(expenseLoaded value) expenseLoaded,
    required TResult Function(expenseError value) expenseError,
    required TResult Function(expenseAdded value) expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(expenseLoading value)? expenseLoading,
    TResult? Function(expenseLoaded value)? expenseLoaded,
    TResult? Function(expenseError value)? expenseError,
    TResult? Function(expenseAdded value)? expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(expenseLoading value)? expenseLoading,
    TResult Function(expenseLoaded value)? expenseLoaded,
    TResult Function(expenseError value)? expenseError,
    TResult Function(expenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateCopyWith<$Res> {
  factory $ExpenseStateCopyWith(
          ExpenseState value, $Res Function(ExpenseState) then) =
      _$ExpenseStateCopyWithImpl<$Res, ExpenseState>;
}

/// @nodoc
class _$ExpenseStateCopyWithImpl<$Res, $Val extends ExpenseState>
    implements $ExpenseStateCopyWith<$Res> {
  _$ExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$expenseInitialImplCopyWith<$Res> {
  factory _$$expenseInitialImplCopyWith(_$expenseInitialImpl value,
          $Res Function(_$expenseInitialImpl) then) =
      __$$expenseInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$expenseInitialImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$expenseInitialImpl>
    implements _$$expenseInitialImplCopyWith<$Res> {
  __$$expenseInitialImplCopyWithImpl(
      _$expenseInitialImpl _value, $Res Function(_$expenseInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$expenseInitialImpl implements expenseInitial {
  const _$expenseInitialImpl();

  @override
  String toString() {
    return 'ExpenseState.expenseInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$expenseInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function() expenseLoading,
    required TResult Function(List<ExpenseModel> expense) expenseLoaded,
    required TResult Function() expenseError,
    required TResult Function(String comment) expenseAdded,
  }) {
    return expenseInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function()? expenseLoading,
    TResult? Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult? Function()? expenseError,
    TResult? Function(String comment)? expenseAdded,
  }) {
    return expenseInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function()? expenseLoading,
    TResult Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult Function()? expenseError,
    TResult Function(String comment)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseInitial != null) {
      return expenseInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(expenseLoading value) expenseLoading,
    required TResult Function(expenseLoaded value) expenseLoaded,
    required TResult Function(expenseError value) expenseError,
    required TResult Function(expenseAdded value) expenseAdded,
  }) {
    return expenseInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(expenseLoading value)? expenseLoading,
    TResult? Function(expenseLoaded value)? expenseLoaded,
    TResult? Function(expenseError value)? expenseError,
    TResult? Function(expenseAdded value)? expenseAdded,
  }) {
    return expenseInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(expenseLoading value)? expenseLoading,
    TResult Function(expenseLoaded value)? expenseLoaded,
    TResult Function(expenseError value)? expenseError,
    TResult Function(expenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseInitial != null) {
      return expenseInitial(this);
    }
    return orElse();
  }
}

abstract class expenseInitial implements ExpenseState {
  const factory expenseInitial() = _$expenseInitialImpl;
}

/// @nodoc
abstract class _$$expenseLoadingImplCopyWith<$Res> {
  factory _$$expenseLoadingImplCopyWith(_$expenseLoadingImpl value,
          $Res Function(_$expenseLoadingImpl) then) =
      __$$expenseLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$expenseLoadingImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$expenseLoadingImpl>
    implements _$$expenseLoadingImplCopyWith<$Res> {
  __$$expenseLoadingImplCopyWithImpl(
      _$expenseLoadingImpl _value, $Res Function(_$expenseLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$expenseLoadingImpl implements expenseLoading {
  const _$expenseLoadingImpl();

  @override
  String toString() {
    return 'ExpenseState.expenseLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$expenseLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function() expenseLoading,
    required TResult Function(List<ExpenseModel> expense) expenseLoaded,
    required TResult Function() expenseError,
    required TResult Function(String comment) expenseAdded,
  }) {
    return expenseLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function()? expenseLoading,
    TResult? Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult? Function()? expenseError,
    TResult? Function(String comment)? expenseAdded,
  }) {
    return expenseLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function()? expenseLoading,
    TResult Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult Function()? expenseError,
    TResult Function(String comment)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseLoading != null) {
      return expenseLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(expenseLoading value) expenseLoading,
    required TResult Function(expenseLoaded value) expenseLoaded,
    required TResult Function(expenseError value) expenseError,
    required TResult Function(expenseAdded value) expenseAdded,
  }) {
    return expenseLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(expenseLoading value)? expenseLoading,
    TResult? Function(expenseLoaded value)? expenseLoaded,
    TResult? Function(expenseError value)? expenseError,
    TResult? Function(expenseAdded value)? expenseAdded,
  }) {
    return expenseLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(expenseLoading value)? expenseLoading,
    TResult Function(expenseLoaded value)? expenseLoaded,
    TResult Function(expenseError value)? expenseError,
    TResult Function(expenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseLoading != null) {
      return expenseLoading(this);
    }
    return orElse();
  }
}

abstract class expenseLoading implements ExpenseState {
  const factory expenseLoading() = _$expenseLoadingImpl;
}

/// @nodoc
abstract class _$$expenseLoadedImplCopyWith<$Res> {
  factory _$$expenseLoadedImplCopyWith(
          _$expenseLoadedImpl value, $Res Function(_$expenseLoadedImpl) then) =
      __$$expenseLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExpenseModel> expense});
}

/// @nodoc
class __$$expenseLoadedImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$expenseLoadedImpl>
    implements _$$expenseLoadedImplCopyWith<$Res> {
  __$$expenseLoadedImplCopyWithImpl(
      _$expenseLoadedImpl _value, $Res Function(_$expenseLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$expenseLoadedImpl(
      expense: null == expense
          ? _value._expense
          : expense // ignore: cast_nullable_to_non_nullable
              as List<ExpenseModel>,
    ));
  }
}

/// @nodoc

class _$expenseLoadedImpl implements expenseLoaded {
  const _$expenseLoadedImpl({required final List<ExpenseModel> expense})
      : _expense = expense;

  final List<ExpenseModel> _expense;
  @override
  List<ExpenseModel> get expense {
    if (_expense is EqualUnmodifiableListView) return _expense;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expense);
  }

  @override
  String toString() {
    return 'ExpenseState.expenseLoaded(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$expenseLoadedImpl &&
            const DeepCollectionEquality().equals(other._expense, _expense));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_expense));

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$expenseLoadedImplCopyWith<_$expenseLoadedImpl> get copyWith =>
      __$$expenseLoadedImplCopyWithImpl<_$expenseLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function() expenseLoading,
    required TResult Function(List<ExpenseModel> expense) expenseLoaded,
    required TResult Function() expenseError,
    required TResult Function(String comment) expenseAdded,
  }) {
    return expenseLoaded(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function()? expenseLoading,
    TResult? Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult? Function()? expenseError,
    TResult? Function(String comment)? expenseAdded,
  }) {
    return expenseLoaded?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function()? expenseLoading,
    TResult Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult Function()? expenseError,
    TResult Function(String comment)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseLoaded != null) {
      return expenseLoaded(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(expenseLoading value) expenseLoading,
    required TResult Function(expenseLoaded value) expenseLoaded,
    required TResult Function(expenseError value) expenseError,
    required TResult Function(expenseAdded value) expenseAdded,
  }) {
    return expenseLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(expenseLoading value)? expenseLoading,
    TResult? Function(expenseLoaded value)? expenseLoaded,
    TResult? Function(expenseError value)? expenseError,
    TResult? Function(expenseAdded value)? expenseAdded,
  }) {
    return expenseLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(expenseLoading value)? expenseLoading,
    TResult Function(expenseLoaded value)? expenseLoaded,
    TResult Function(expenseError value)? expenseError,
    TResult Function(expenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseLoaded != null) {
      return expenseLoaded(this);
    }
    return orElse();
  }
}

abstract class expenseLoaded implements ExpenseState {
  const factory expenseLoaded({required final List<ExpenseModel> expense}) =
      _$expenseLoadedImpl;

  List<ExpenseModel> get expense;

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$expenseLoadedImplCopyWith<_$expenseLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$expenseErrorImplCopyWith<$Res> {
  factory _$$expenseErrorImplCopyWith(
          _$expenseErrorImpl value, $Res Function(_$expenseErrorImpl) then) =
      __$$expenseErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$expenseErrorImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$expenseErrorImpl>
    implements _$$expenseErrorImplCopyWith<$Res> {
  __$$expenseErrorImplCopyWithImpl(
      _$expenseErrorImpl _value, $Res Function(_$expenseErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$expenseErrorImpl implements expenseError {
  const _$expenseErrorImpl();

  @override
  String toString() {
    return 'ExpenseState.expenseError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$expenseErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function() expenseLoading,
    required TResult Function(List<ExpenseModel> expense) expenseLoaded,
    required TResult Function() expenseError,
    required TResult Function(String comment) expenseAdded,
  }) {
    return expenseError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function()? expenseLoading,
    TResult? Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult? Function()? expenseError,
    TResult? Function(String comment)? expenseAdded,
  }) {
    return expenseError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function()? expenseLoading,
    TResult Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult Function()? expenseError,
    TResult Function(String comment)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseError != null) {
      return expenseError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(expenseLoading value) expenseLoading,
    required TResult Function(expenseLoaded value) expenseLoaded,
    required TResult Function(expenseError value) expenseError,
    required TResult Function(expenseAdded value) expenseAdded,
  }) {
    return expenseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(expenseLoading value)? expenseLoading,
    TResult? Function(expenseLoaded value)? expenseLoaded,
    TResult? Function(expenseError value)? expenseError,
    TResult? Function(expenseAdded value)? expenseAdded,
  }) {
    return expenseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(expenseLoading value)? expenseLoading,
    TResult Function(expenseLoaded value)? expenseLoaded,
    TResult Function(expenseError value)? expenseError,
    TResult Function(expenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseError != null) {
      return expenseError(this);
    }
    return orElse();
  }
}

abstract class expenseError implements ExpenseState {
  const factory expenseError() = _$expenseErrorImpl;
}

/// @nodoc
abstract class _$$expenseAddedImplCopyWith<$Res> {
  factory _$$expenseAddedImplCopyWith(
          _$expenseAddedImpl value, $Res Function(_$expenseAddedImpl) then) =
      __$$expenseAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String comment});
}

/// @nodoc
class __$$expenseAddedImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$expenseAddedImpl>
    implements _$$expenseAddedImplCopyWith<$Res> {
  __$$expenseAddedImplCopyWithImpl(
      _$expenseAddedImpl _value, $Res Function(_$expenseAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$expenseAddedImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$expenseAddedImpl implements expenseAdded {
  const _$expenseAddedImpl({required this.comment});

  @override
  final String comment;

  @override
  String toString() {
    return 'ExpenseState.expenseAdded(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$expenseAddedImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$expenseAddedImplCopyWith<_$expenseAddedImpl> get copyWith =>
      __$$expenseAddedImplCopyWithImpl<_$expenseAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expenseInitial,
    required TResult Function() expenseLoading,
    required TResult Function(List<ExpenseModel> expense) expenseLoaded,
    required TResult Function() expenseError,
    required TResult Function(String comment) expenseAdded,
  }) {
    return expenseAdded(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? expenseInitial,
    TResult? Function()? expenseLoading,
    TResult? Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult? Function()? expenseError,
    TResult? Function(String comment)? expenseAdded,
  }) {
    return expenseAdded?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expenseInitial,
    TResult Function()? expenseLoading,
    TResult Function(List<ExpenseModel> expense)? expenseLoaded,
    TResult Function()? expenseError,
    TResult Function(String comment)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseAdded != null) {
      return expenseAdded(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(expenseInitial value) expenseInitial,
    required TResult Function(expenseLoading value) expenseLoading,
    required TResult Function(expenseLoaded value) expenseLoaded,
    required TResult Function(expenseError value) expenseError,
    required TResult Function(expenseAdded value) expenseAdded,
  }) {
    return expenseAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(expenseInitial value)? expenseInitial,
    TResult? Function(expenseLoading value)? expenseLoading,
    TResult? Function(expenseLoaded value)? expenseLoaded,
    TResult? Function(expenseError value)? expenseError,
    TResult? Function(expenseAdded value)? expenseAdded,
  }) {
    return expenseAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(expenseInitial value)? expenseInitial,
    TResult Function(expenseLoading value)? expenseLoading,
    TResult Function(expenseLoaded value)? expenseLoaded,
    TResult Function(expenseError value)? expenseError,
    TResult Function(expenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseAdded != null) {
      return expenseAdded(this);
    }
    return orElse();
  }
}

abstract class expenseAdded implements ExpenseState {
  const factory expenseAdded({required final String comment}) =
      _$expenseAddedImpl;

  String get comment;

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$expenseAddedImplCopyWith<_$expenseAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
