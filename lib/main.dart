import 'package:flutter/material.dart';
import 'package:text2speech_flutter/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primaryColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: const Color(0xFF2196f3)),
      ),
      home: HomePage(),
    );
  }
}
