// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

 class pantalla_lectorcodigo extends StatefulWidget {
  const pantalla_lectorcodigo({super.key});

  @override
  State<pantalla_lectorcodigo> createState() => _pantalla_lectorcodigoState();
}

class _pantalla_lectorcodigoState extends State<pantalla_lectorcodigo> {
  String qrvalue = "Codigo Qr";
  
void scanQr() async {
  String? cameraScanResult = await scanner.scan();
  setState(() {
    qrvalue = cameraScanResult!;
  });

}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(

          backgroundColor: Color.fromARGB(95, 209, 88, 23),
          title: Text('QR Scan',

        )
      ),
      body: Center(
        child:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            Text(
            qrvalue,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18
            ),
          ),
          ],
          ) 
        ) 
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 5, 5, 5),
          onPressed: () => scanQr(),
          child: Icon(Icons.camera),
        ),
      
    );
  }
}