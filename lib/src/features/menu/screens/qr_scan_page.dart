import 'dart:developer';
import 'dart:io';

import 'package:dinereel/src/features/menu/screens/menu_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
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
  late PermissionStatus status;
  bool scaning = true;
  @override
  void initState() {
    // getCameraPermission();
    // getStatus();
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

  // Future<PermissionStatus> getCameraPermission() async {
  //   var status = await Permission.camera.status;
  //   if (!status.isGranted) {
  //     final result = await Permission.camera.request();
  //     return result;
  //   } else {
  //     return status;
  //   }
  // }

  // Future<bool> checkPermissionStatus() async {
  //   const permission = Permission.camera;
  //   print(permission);
  //   return await permission.status.isGranted;
  // }

  // getStatus() async {
  //   status = await getCameraPermission();
  //   print('status-->$status');
  // }

  // Future<void> requestPermission() async {
  //   const permission = Permission.camera;

  //   if (await permission.isDenied) {
  //     final result = await permission.request();

  //     if (result.isGranted) {
  //       // Permission is granted
  //     } else if (result.isDenied) {
  //       // Permission is denied
  //     } else if (result.isPermanentlyDenied) {
  //       // Permission is permanently denied
  //     }
  //   }
  // }

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
                child: const Icon(Icons.arrow_back, color: AppColors.white),
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
                      child: Center(
                        child: QRView(
                            key: qrKey,
                            overlay: QrScannerOverlayShape(
                                borderColor: AppColors.primaryGradientDeep,
                                borderRadius: 10,
                                borderLength: 30,
                                borderWidth: 10,
                                overlayColor: AppColors.scanbgColor,
                                cutOutBottomOffset: 0),
                            onQRViewCreated: _onQRViewCreated,
                            overlayMargin: const EdgeInsets.all(0)),
                      )))
            ],
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.resumeCamera();
    controller.scannedDataStream.listen((scanData) {
      log(scanData.code!);
      setState(() {
        result = scanData;
      });
      if (scaning) {
        scaning = false;
        controller.pauseCamera();
        scanData.toString().isNotEmpty
            ? Navigator.of(context).push(Routes().createRoute(const MenuHome()))
            : Navigator.of(context).push(Routes().createRoute(const Home()));
      }
    });

    this.controller!.pauseCamera();
    this.controller!.resumeCamera();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
