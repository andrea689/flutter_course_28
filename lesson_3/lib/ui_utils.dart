import 'package:flutter/material.dart';

class UiUtils {
  static Gradient get myGradient => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.green.shade900, Colors.black],
  );
}
