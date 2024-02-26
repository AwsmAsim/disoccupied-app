import 'package:disoccupied/utils/ColorConstants.dart';
import 'package:disoccupied/view/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorConstants.primaryColor,
          primary: ColorConstants.primaryColor,
          secondary: ColorConstants.secondaryColor,
          brightness: Brightness.light
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: ColorConstants.primaryColor)
        )
      ),
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}
