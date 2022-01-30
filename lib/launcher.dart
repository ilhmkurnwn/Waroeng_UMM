import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'HomePage.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }
  startLaunching() async {
    var duration = const Duration(seconds: 2);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new homePage() ;
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0x0),
    ));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffffffff), Color(0xffffffff)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: new Image.asset(
                "img/logo.png",
                height: 350.0,
                width: 350.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}