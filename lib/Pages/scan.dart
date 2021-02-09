import 'dart:async';
import 'package:barras/barras.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanState createState() => new _ScanState();
}

class _ScanState extends State<ScanQR> {
  String barcode = "";

  @override
  initState() {
    super.initState();
    Future scan() async {
      String barcode = await Barras.scan(context, successBeep: false);
      setState(() => this.barcode = barcode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              barcode,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ));
  }
}
