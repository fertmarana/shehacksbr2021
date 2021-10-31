import 'package:flutter/material.dart';
//import 'package:recat/CatadorouMorador.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:foodrone/app.dart';
//Here the initialization starts and a bottom navigationbar is set
void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Bottom Navigation Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}