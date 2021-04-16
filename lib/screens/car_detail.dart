import 'package:carApp/utils/utils.dart';
import 'package:flutter/material.dart';
import '../widgets/specific_card.dart';
import '/profile.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double harga;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  CarDetail(
      {this.title,
      this.harga,
      this.color,
      this.gearbox,
      this.fuel,
      this.brand,
      this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(title, style: MainHeading),
            Text(
              brand,
              style: BasicHeading,
            ),
            Hero(tag: title, child: Image.asset(path)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpecificsCard(
                  name: '12 Bulan',
                  price: harga * 12,
                  name2: 'Rupiah',
                ),
                SpecificsCard(
                  name: '6 Bulan',
                  price: harga * 6,
                  name2: 'Rupiah',
                ),
                SpecificsCard(
                  name: '1 Bulan',
                  price: harga * 1,
                  name2: 'Rupiah',
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'SPESIFIKASI',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpecificsCard(
                  name: 'Warna',
                  name2: color,
                ),
                SpecificsCard(
                  name: 'Transmisi',
                  name2: gearbox,
                ),
                SpecificsCard(
                  name: 'Bensin',
                  name2: fuel,
                )
              ],
            ),
            SizedBox(height: 10),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.blue[50],
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileApp())),
              child: Text(
                'Pesan Sekarang',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
