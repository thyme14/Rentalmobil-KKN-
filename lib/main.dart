import 'package:flutter/material.dart';
import './screens/cars_overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harapan Rental',
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.purple),
      home: CarsOverviewScreen(),
    );
  }
}
