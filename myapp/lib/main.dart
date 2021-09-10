import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './screens/cars_overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void launchWhatsapp({@required number, @required message}) async {
    String url = "https://web.whatsapp.com://send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print("Can't open whatsapp");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Harapan Rental(KKN)',
        theme:
            ThemeData(primaryColor: Colors.white, accentColor: Colors.purple),
        home: CarsOverviewScreen());
  }
}
