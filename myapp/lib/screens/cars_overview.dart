import 'package:flutter/material.dart';
import 'package:myapp/profile.dart';
import 'package:myapp/utils/utils.dart';
import '../widgets/cars_grid.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CarsOverviewScreen extends StatelessWidget {
  void launchWhatsapp({@required number, @required message}) async {
    String url = "https://wa.me/6287898884752?send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print("Can't open whatsapp");
  }

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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          launchWhatsapp(number: "+6287898884752", message: "oi");
        },
        label: Text('WhatsApp'),
        icon: Icon(Icons.call),
      ),
    );
  }
}
