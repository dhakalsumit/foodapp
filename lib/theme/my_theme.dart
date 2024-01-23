import 'package:flutter/material.dart';

ThemeData myTheme() => ThemeData(
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
            fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(
            fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w400),
      ),
      useMaterial3: true,
    );
