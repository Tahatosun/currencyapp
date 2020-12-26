import 'package:currencyapp/ui/views/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 17, fontFamily: 'Montserrat'),
          bodyText2: TextStyle(fontFamily: 'Montserrat'),
        ),
        canvasColor: Color(0xFF2c3e50),
        appBarTheme: AppBarTheme(
          color: Color(0xFF2c3e50),
        ),
      ),
      title: 'Currency Rates',
      home: HomeView(),
    );
  }
}
