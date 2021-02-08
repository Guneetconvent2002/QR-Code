import 'dart:async';

import 'reader.dart';
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
            child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.blueGrey,
                onPressed: scan,
                child: const Text('START CAMERA SCAN')),
          ),
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

  Future scan() async {
    String barcode = await Barras.scan(context, successBeep: false);
    setState(() => this.barcode = barcode);
  }
}
