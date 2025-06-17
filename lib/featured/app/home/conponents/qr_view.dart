import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRScannerScreen extends StatelessWidget {
  const QRScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Scanner')),
      body: MobileScanner(
        controller: MobileScannerController(),
        onDetect: (BarcodeCapture capture) {
          final List<Barcode> barcodes = capture.barcodes;

          for (final barcode in barcodes) {
            final String? code = barcode.rawValue;
            debugPrint('QR Code found: $code');
            if (code != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Scanned: $code')),
              );
              Navigator.pop(context, code); // Return result
              break; // Only use the first code
            }
          }
        },
      ),
    );
  }
}
