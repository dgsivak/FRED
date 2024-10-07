import 'package:flutter/material.dart';

class Incident {
  final String buildingName;
  final String section;
  final DateTime date;
  final TimeOfDay time;

  Incident({
    required this.buildingName,
    required this.section,
    required this.date,
    required this.time,
  });
}