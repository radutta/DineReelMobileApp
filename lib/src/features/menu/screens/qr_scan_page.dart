import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../themes/colors.dart';
import '../../../routing/routing_function.dart';
import '../../auth/screens/home_page.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({super.key});

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  @override
  void initState() {
    super.initState();
  }

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scanbgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(Routes().createRoute(const Home()));
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 50),
              Center(
                  child: Text('scan_qr'.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: AppColors.white))),
              const SizedBox(height: 52),
              Center(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: QRView(
                    key: qrKey,
                    overlay: QrScannerOverlayShape(
                        borderColor: AppColors.prinaryGradientDeep,
                        borderRadius: 10,
                        borderLength: 30,
                        borderWidth: 10,
                        overlayColor: AppColors.scanbgColor,
                        cutOutBottomOffset: 0),
                    onQRViewCreated: _onQRViewCreated,
                    overlayMargin: const EdgeInsets.all(0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
