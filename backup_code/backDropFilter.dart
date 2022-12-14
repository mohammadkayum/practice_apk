// ignore_for_file: prefer_final_fields

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 250,
              color: Colors.red,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white.withOpacity(0.5),
              ),
            )
          ],
        )),
      ),
    );
  }
}
