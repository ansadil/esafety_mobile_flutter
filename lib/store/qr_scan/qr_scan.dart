import 'package:mobx/mobx.dart';
import 'package:flutter/services.dart';
import 'package:esafety/translations.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


// Include generated file
part 'qr_scan.g.dart';

class QrScan = _QrScan with _$QrScan;


abstract class _QrScan with Store {

@observable String barcode;
@observable bool state;

@action  startBarcodeScanStream(context) async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver("#ff6666", Translations.of(context).text("cancel"), true)
        .listen((barcode) => print(barcode));
  }

@action Future<String> scan(context) async {
    try {
     String barcode = await FlutterBarcodeScanner.scanBarcode("#ff6666", Translations.of(context).text("cancel"), true);
       state = true;
     return barcode;
    } on PlatformException {
       state = false;
       return null;
      // this.barcode = null;
      } catch(e){
          state = false;
          return null;
      }
  }

}