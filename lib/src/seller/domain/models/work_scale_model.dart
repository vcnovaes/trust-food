import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'work_scale_model.freezed.dart';

@freezed
class WorkScaleModel with _$WorkScaleModel {
  const WorkScaleModel._();
  const factory WorkScaleModel({
    required TimeOfDay startTime,
    required TimeOfDay endTime,
    required List<String> workDays,
  }) = _WorkScaleModel;
}
