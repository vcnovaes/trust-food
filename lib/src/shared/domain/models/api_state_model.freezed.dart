// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ApiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? signedOut,
    TResult? Function()? authInit,
    TResult? Function()? gone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(AuthInit value)? authInit,
    TResult? Function(Gone value)? gone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStateCopyWith<$Res> {
  factory $ApiStateCopyWith(ApiState value, $Res Function(ApiState) then) =
      _$ApiStateCopyWithImpl<$Res, ApiState>;
}

/// @nodoc
class _$ApiStateCopyWithImpl<$Res, $Val extends ApiState>
    implements $ApiStateCopyWith<$Res> {
  _$ApiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(
    _$UnauthenticatedImpl value,
    $Res Function(_$UnauthenticatedImpl) then,
  ) = __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$ApiStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
    _$UnauthenticatedImpl _value,
    $Res Function(_$UnauthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'ApiState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? signedOut,
    TResult? Function()? authInit,
    TResult? Function()? gone,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(AuthInit value)? authInit,
    TResult? Function(Gone value)? gone,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements ApiState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
    _$AuthenticatedImpl value,
    $Res Function(_$AuthenticatedImpl) then,
  ) = __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$ApiStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
    _$AuthenticatedImpl _value,
    $Res Function(_$AuthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'ApiState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? signedOut,
    TResult? Function()? authInit,
    TResult? Function()? gone,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(AuthInit value)? authInit,
    TResult? Function(Gone value)? gone,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements ApiState {
  const factory Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
    _$SignedOutImpl value,
    $Res Function(_$SignedOutImpl) then,
  ) = __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$ApiStateCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
    _$SignedOutImpl _value,
    $Res Function(_$SignedOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignedOutImpl implements SignedOut {
  const _$SignedOutImpl();

  @override
  String toString() {
    return 'ApiState.signedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? signedOut,
    TResult? Function()? authInit,
    TResult? Function()? gone,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(AuthInit value)? authInit,
    TResult? Function(Gone value)? gone,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements ApiState {
  const factory SignedOut() = _$SignedOutImpl;
}

/// @nodoc
abstract class _$$AuthInitImplCopyWith<$Res> {
  factory _$$AuthInitImplCopyWith(
    _$AuthInitImpl value,
    $Res Function(_$AuthInitImpl) then,
  ) = __$$AuthInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitImplCopyWithImpl<$Res>
    extends _$ApiStateCopyWithImpl<$Res, _$AuthInitImpl>
    implements _$$AuthInitImplCopyWith<$Res> {
  __$$AuthInitImplCopyWithImpl(
    _$AuthInitImpl _value,
    $Res Function(_$AuthInitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthInitImpl implements AuthInit {
  const _$AuthInitImpl();

  @override
  String toString() {
    return 'ApiState.authInit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return authInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? signedOut,
    TResult? Function()? authInit,
    TResult? Function()? gone,
  }) {
    return authInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (authInit != null) {
      return authInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return authInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(AuthInit value)? authInit,
    TResult? Function(Gone value)? gone,
  }) {
    return authInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (authInit != null) {
      return authInit(this);
    }
    return orElse();
  }
}

abstract class AuthInit implements ApiState {
  const factory AuthInit() = _$AuthInitImpl;
}

/// @nodoc
abstract class _$$GoneImplCopyWith<$Res> {
  factory _$$GoneImplCopyWith(
    _$GoneImpl value,
    $Res Function(_$GoneImpl) then,
  ) = __$$GoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoneImplCopyWithImpl<$Res>
    extends _$ApiStateCopyWithImpl<$Res, _$GoneImpl>
    implements _$$GoneImplCopyWith<$Res> {
  __$$GoneImplCopyWithImpl(_$GoneImpl _value, $Res Function(_$GoneImpl) _then)
    : super(_value, _then);

  /// Create a copy of ApiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoneImpl implements Gone {
  const _$GoneImpl();

  @override
  String toString() {
    return 'ApiState.gone()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return gone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? signedOut,
    TResult? Function()? authInit,
    TResult? Function()? gone,
  }) {
    return gone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (gone != null) {
      return gone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return gone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(AuthInit value)? authInit,
    TResult? Function(Gone value)? gone,
  }) {
    return gone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (gone != null) {
      return gone(this);
    }
    return orElse();
  }
}

abstract class Gone implements ApiState {
  const factory Gone() = _$GoneImpl;
}
