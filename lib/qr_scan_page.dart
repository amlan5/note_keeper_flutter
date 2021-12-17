import 'package:flutter/material.dart';

class Scan_qr extends StatelessWidget {
  const Scan_qr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black38,
          child: Center(child: Text("Scan",style: TextStyle(fontSize: 60),),)),
    );
  }
}
