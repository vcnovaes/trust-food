// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() seller,
    required TResult Function() buyer,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? seller,
    TResult? Function()? buyer,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? seller,
    TResult Function()? buyer,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Seller value) seller,
    required TResult Function(Buyer value) buyer,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Seller value)? seller,
    TResult? Function(Buyer value)? buyer,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Seller value)? seller,
    TResult Function(Buyer value)? buyer,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeCopyWith<$Res> {
  factory $UserTypeCopyWith(UserType value, $Res Function(UserType) then) =
      _$UserTypeCopyWithImpl<$Res, UserType>;
}

/// @nodoc
class _$UserTypeCopyWithImpl<$Res, $Val extends UserType>
    implements $UserTypeCopyWith<$Res> {
  _$UserTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SellerImplCopyWith<$Res> {
  factory _$$SellerImplCopyWith(
    _$SellerImpl value,
    $Res Function(_$SellerImpl) then,
  ) = __$$SellerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SellerImplCopyWithImpl<$Res>
    extends _$UserTypeCopyWithImpl<$Res, _$SellerImpl>
    implements _$$SellerImplCopyWith<$Res> {
  __$$SellerImplCopyWithImpl(
    _$SellerImpl _value,
    $Res Function(_$SellerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SellerImpl implements Seller {
  const _$SellerImpl();

  @override
  String toString() {
    return 'UserType.seller()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SellerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() seller,
    required TResult Function() buyer,
  }) {
    return seller();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? seller,
    TResult? Function()? buyer,
  }) {
    return seller?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? seller,
    TResult Function()? buyer,
    required TResult orElse(),
  }) {
    if (seller != null) {
      return seller();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Seller value) seller,
    required TResult Function(Buyer value) buyer,
  }) {
    return seller(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Seller value)? seller,
    TResult? Function(Buyer value)? buyer,
  }) {
    return seller?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Seller value)? seller,
    TResult Function(Buyer value)? buyer,
    required TResult orElse(),
  }) {
    if (seller != null) {
      return seller(this);
    }
    return orElse();
  }
}

abstract class Seller implements UserType {
  const factory Seller() = _$SellerImpl;
}

/// @nodoc
abstract class _$$BuyerImplCopyWith<$Res> {
  factory _$$BuyerImplCopyWith(
    _$BuyerImpl value,
    $Res Function(_$BuyerImpl) then,
  ) = __$$BuyerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BuyerImplCopyWithImpl<$Res>
    extends _$UserTypeCopyWithImpl<$Res, _$BuyerImpl>
    implements _$$BuyerImplCopyWith<$Res> {
  __$$BuyerImplCopyWithImpl(
    _$BuyerImpl _value,
    $Res Function(_$BuyerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BuyerImpl implements Buyer {
  const _$BuyerImpl();

  @override
  String toString() {
    return 'UserType.buyer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BuyerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() seller,
    required TResult Function() buyer,
  }) {
    return buyer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? seller,
    TResult? Function()? buyer,
  }) {
    return buyer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? seller,
    TResult Function()? buyer,
    required TResult orElse(),
  }) {
    if (buyer != null) {
      return buyer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Seller value) seller,
    required TResult Function(Buyer value) buyer,
  }) {
    return buyer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Seller value)? seller,
    TResult? Function(Buyer value)? buyer,
  }) {
    return buyer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Seller value)? seller,
    TResult Function(Buyer value)? buyer,
    required TResult orElse(),
  }) {
    if (buyer != null) {
      return buyer(this);
    }
    return orElse();
  }
}

abstract class Buyer implements UserType {
  const factory Buyer() = _$BuyerImpl;
}
