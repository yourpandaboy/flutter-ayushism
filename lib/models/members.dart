import 'package:flutter/material.dart';

class Members {
  final String id;
  final String name;
  final String country;
  final Color color;

  const Members({
    required this.id,
    required this.name,
    required this.country,
    this.color = Colors.blue,
  });
}
