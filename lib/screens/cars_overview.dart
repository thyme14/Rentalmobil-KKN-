import 'package:carApp/utils/utils.dart';
import 'package:flutter/material.dart';
import '../widgets/cars_grid.dart';

class CarsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Harapan Rental(KKN)', style: SubHeading),
        leading: Image.asset('assets/iconatas.png'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              'Mobil yang Tersedia',
              style: MainHeading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CarsGrid(),
          )
        ],
      ),
    );
  }
}
