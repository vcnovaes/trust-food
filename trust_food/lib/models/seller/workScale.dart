import 'package:flutter/material.dart';

class WorkScale {
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final List<String> workDays;

  WorkScale({
    required this.startTime,
    required this.endTime,
    required this.workDays,
  });

  factory WorkScale.fromJson(Map<String, dynamic> json) {
    return WorkScale(
      startTime: _timeFromString(json['startTime']),
      endTime: _timeFromString(json['endTime']),
      workDays: List<String>.from(json['workDays']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'startTime': _timeToString(startTime),
      'endTime': _timeToString(endTime),
      'workDays': workDays,
    };
  }

  // Convert String to TimeOfDay
  static TimeOfDay _timeFromString(String time) {
    List<String> parts = time.split(":");
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  // Convert TimeOfDay to String
  static String _timeToString(TimeOfDay time) {
    return "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
  }
}
