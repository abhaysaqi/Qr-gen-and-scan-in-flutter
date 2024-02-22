import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQR extends StatefulWidget {
  const ScanQR({super.key});

  @override
  State<ScanQR> get createState => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  String ScannedREsult = "No data scanned yet.";

  Future startscan() async {
    var result;
    try {
      result = await FlutterBarcodeScanner.scanBarcode(
          "#FFFFFF", 'Cancel', true, ScanMode.QR);
    } on PlatformException catch (e) {
      result = "Failed to get platform version";
    } catch (e) {
      SnackBar(
        content: Text("Error Occured $e"),
      );
    }
    if (!mounted) return;

    setState(() {
      ScannedREsult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scanner QR Code')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Scanned Value - $ScannedREsult",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    startscan();
                  },
                  child: Text(
                    "Start Scan",
                    style: TextStyle(fontSize: 20),
                  )))
        ],
      ),
    );
  }
}
