import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// Flutter code sample for [Scaffold].

void main() => runApp(Malqapp());

class Malqapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      //prevent orientation
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/alqam3.jpg'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Mohammad Alqam',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSans',
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 20.0,
                width: 230.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              GestureDetector(
                onTap: () => launch("tel:+972569966663"),
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+972 5699 66663',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        fontFamily: 'SourceSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  // Android and iOS
                  const uri = 'mailto:mohammadalqam199@gmail.com';
                  if (await canLaunch(uri)) {
                    await launch(uri);
                  } else {
                    throw 'Could not launch $uri';
                  }
                },
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'mohammadalqam199@gmail.com',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 17.0,
                        fontFamily: 'SourceSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () async {

                  const url =
                      'https://docs.google.com/document/d/1E_iSNC4U1JmSjj2sXKrBAUH4Q64_DDFm9NzlKe7OBXI/edit';
                  // Center(child:CircularProgressIndicator());
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }

                },
                child: Text(
                  'Open Resume',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SourceSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
