import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CarItem {
  final String title;
  final double price;
  final String path;
  final String warna;
  final String gearbox;
  final String fuel;
  final String brand;

  CarItem(
      {@required this.title,
      @required this.price,
      @required this.path,
      @required this.warna,
      @required this.gearbox,
      @required this.fuel,
      @required this.brand});
}

CarsList allCars = CarsList(cars: [
  CarItem(
    title: 'Avanza 2020',
    price: 200.000,
    warna: 'Putih',
    gearbox: '4',
    fuel: '45Liter',
    brand: 'Toyota',
    path: 'assets/car1.jpg',
  ),
  CarItem(
      title: 'Wuling Confero',
      price: 240.000,
      warna: 'Putih',
      gearbox: '6',
      fuel: '42Liter',
      brand: 'Wuling',
      path: 'assets/car2.jpg'),
  CarItem(
      title: 'Alphard',
      price: 500.000,
      warna: 'Putih',
      gearbox: '7',
      fuel: '75Liter',
      brand: 'Toyota',
      path: 'assets/car3.jpg'),
  CarItem(
      title: 'Agya 2020',
      price: 190.000,
      warna: 'Abu Abu',
      gearbox: '5',
      fuel: '33Liter',
      brand: 'Toyota',
      path: 'assets/car4.jpg'),
  CarItem(
      title: 'Honda Civic 2020',
      price: 245.000,
      warna: 'Putih',
      gearbox: '6',
      fuel: '57Liter',
      brand: 'Honda',
      path: 'assets/car5.jpg'),
  CarItem(
      title: 'Wuling Almaz',
      price: 300.000,
      warna: 'Putih',
      gearbox: '6',
      fuel: '60Liter',
      brand: 'Wuling',
      path: 'assets/car6.jpg'),
  CarItem(
      title: 'Char2020',
      price: 320.000,
      warna: 'Biru',
      gearbox: '6',
      fuel: '50Liter',
      brand: 'Toyota',
      path: 'assets/chr7.jpg'),
  CarItem(
      title: 'Juke',
      price: 275.000,
      warna: 'Putih',
      gearbox: '6',
      fuel: '50Liter',
      brand: 'Nissan',
      path: 'assets/car8.jpg'),
  CarItem(
      title: 'Swift',
      price: 260.000,
      warna: 'Putih',
      gearbox: '5',
      fuel: '50Liter',
      brand: 'Suzuki',
      path: 'assets/car9.jpg'),
  CarItem(
      title: 'Rush',
      price: 255.000,
      warna: 'Abu-abu',
      gearbox: '5',
      fuel: '50Liter',
      brand: 'Toyota',
      path: 'assets/car10.jpg'),
  CarItem(
      title: 'Yaris',
      price: 280.000,
      warna: 'Merah',
      gearbox: '5',
      fuel: '45Liter',
      brand: 'Toyota',
      path: 'assets/car11.jpg'),
]);

class CarsList {
  List<CarItem> cars;

  CarsList({this.cars});
}
