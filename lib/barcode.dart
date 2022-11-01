import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class BarcodePage extends StatelessWidget {
  const BarcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child: SfBarcodeGenerator(
            value: 'https://www.youtube.com/',
            symbology: QRCode(),
            showValue: true,
          ),
        ),
      ),
    );
  }
}
