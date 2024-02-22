import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatefulWidget {
  const GenerateQR({super.key});

  @override
  State<GenerateQR> get createState => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {
  TextEditingController valuecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generate QR Code')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          valuecontroller.text.isNotEmpty
              ? Container()
              : QrImageView(
                  data: valuecontroller.text,
                  size: 200,
                  version: QrVersions.auto,
                  embeddedImage: NetworkImage(
                      "https://play-lh.googleusercontent.com/VTDNEpUTHQoQUJMHLrErGJyHg89uy71MyuHHsIqbSLBpBVi2FBcHX9RohLHl18LShw"),
                ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              controller: valuecontroller,
              decoration: InputDecoration(hintText: "Enter Your Data Here"),
            ),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Generate QR"))),
        ],
      ),
    );
  }
}
