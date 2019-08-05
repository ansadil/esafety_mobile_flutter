// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_scan.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$QrScan on _QrScan, Store {
  final _$barcodeAtom = Atom(name: '_QrScan.barcode');

  @override
  String get barcode {
    _$barcodeAtom.context.enforceReadPolicy(_$barcodeAtom);
    _$barcodeAtom.reportObserved();
    return super.barcode;
  }

  @override
  set barcode(String value) {
    _$barcodeAtom.context.conditionallyRunInAction(() {
      super.barcode = value;
      _$barcodeAtom.reportChanged();
    }, _$barcodeAtom, name: '${_$barcodeAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_QrScan.state');

  @override
  bool get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(bool value) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom.name}_set');
  }

  final _$startBarcodeScanStreamAsyncAction =
      AsyncAction('startBarcodeScanStream');

  @override
  Future startBarcodeScanStream() {
    return _$startBarcodeScanStreamAsyncAction
        .run(() => super.startBarcodeScanStream());
  }

  final _$scanAsyncAction = AsyncAction('scan');

  @override
  Future<String> scan() {
    return _$scanAsyncAction.run(() => super.scan());
  }
}
