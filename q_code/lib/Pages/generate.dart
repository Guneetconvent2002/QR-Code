import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';

class GenerateQR extends StatefulWidget {
  @override
  _GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {
  String qrData = "Proximity";
  final qrdataFeed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            //Scroll view given to Column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                QrImage(data: qrData),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Scan The QR Code",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
