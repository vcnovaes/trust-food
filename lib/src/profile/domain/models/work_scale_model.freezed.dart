// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_scale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WorkScaleModel {
  TimeOfDay get startTime => throw _privateConstructorUsedError;
  TimeOfDay get endTime => throw _privateConstructorUsedError;
  List<String> get workDays => throw _privateConstructorUsedError;

  /// Create a copy of WorkScaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkScaleModelCopyWith<WorkScaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkScaleModelCopyWith<$Res> {
  factory $WorkScaleModelCopyWith(
    WorkScaleModel value,
    $Res Function(WorkScaleModel) then,
  ) = _$WorkScaleModelCopyWithImpl<$Res, WorkScaleModel>;
  @useResult
  $Res call({TimeOfDay startTime, TimeOfDay endTime, List<String> workDays});
}

/// @nodoc
class _$WorkScaleModelCopyWithImpl<$Res, $Val extends WorkScaleModel>
    implements $WorkScaleModelCopyWith<$Res> {
  _$WorkScaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkScaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? workDays = null,
  }) {
    return _then(
      _value.copyWith(
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay,
            endTime:
                null == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as TimeOfDay,
            workDays:
                null == workDays
                    ? _value.workDays
                    : workDays // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkScaleModelImplCopyWith<$Res>
    implements $WorkScaleModelCopyWith<$Res> {
  factory _$$WorkScaleModelImplCopyWith(
    _$WorkScaleModelImpl value,
    $Res Function(_$WorkScaleModelImpl) then,
  ) = __$$WorkScaleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeOfDay startTime, TimeOfDay endTime, List<String> workDays});
}

/// @nodoc
class __$$WorkScaleModelImplCopyWithImpl<$Res>
    extends _$WorkScaleModelCopyWithImpl<$Res, _$WorkScaleModelImpl>
    implements _$$WorkScaleModelImplCopyWith<$Res> {
  __$$WorkScaleModelImplCopyWithImpl(
    _$WorkScaleModelImpl _value,
    $Res Function(_$WorkScaleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkScaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? workDays = null,
  }) {
    return _then(
      _$WorkScaleModelImpl(
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay,
        endTime:
            null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as TimeOfDay,
        workDays:
            null == workDays
                ? _value._workDays
                : workDays // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$WorkScaleModelImpl extends _WorkScaleModel {
  const _$WorkScaleModelImpl({
    required this.startTime,
    required this.endTime,
    required final List<String> workDays,
  }) : _workDays = workDays,
       super._();

  @override
  final TimeOfDay startTime;
  @override
  final TimeOfDay endTime;
  final List<String> _workDays;
  @override
  List<String> get workDays {
    if (_workDays is EqualUnmodifiableListView) return _workDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workDays);
  }

  @override
  String toString() {
    return 'WorkScaleModel(startTime: $startTime, endTime: $endTime, workDays: $workDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkScaleModelImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality().equals(other._workDays, _workDays));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    startTime,
    endTime,
    const DeepCollectionEquality().hash(_workDays),
  );

  /// Create a copy of WorkScaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkScaleModelImplCopyWith<_$WorkScaleModelImpl> get copyWith =>
      __$$WorkScaleModelImplCopyWithImpl<_$WorkScaleModelImpl>(
        this,
        _$identity,
      );
}

abstract class _WorkScaleModel extends WorkScaleModel {
  const factory _WorkScaleModel({
    required final TimeOfDay startTime,
    required final TimeOfDay endTime,
    required final List<String> workDays,
  }) = _$WorkScaleModelImpl;
  const _WorkScaleModel._() : super._();

  @override
  TimeOfDay get startTime;
  @override
  TimeOfDay get endTime;
  @override
  List<String> get workDays;

  /// Create a copy of WorkScaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkScaleModelImplCopyWith<_$WorkScaleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
