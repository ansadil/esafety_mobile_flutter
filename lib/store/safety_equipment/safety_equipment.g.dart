// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_equipment.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$SafetyEquipment on _SafetyEquipment, Store {
  final _$dataAtom = Atom(name: '_SafetyEquipment.data');

  @override
  List get data {
    _$dataAtom.context.enforceReadPolicy(_$dataAtom);
    _$dataAtom.reportObserved();
    return super.data;
  }

  @override
  set data(List value) {
    _$dataAtom.context.conditionallyRunInAction(() {
      super.data = value;
      _$dataAtom.reportChanged();
    }, _$dataAtom, name: '${_$dataAtom.name}_set');
  }

  final _$getDataFromApiAsyncAction = AsyncAction('getDataFromApi');

  @override
  Future<bool> getDataFromApi(int id) {
    return _$getDataFromApiAsyncAction.run(() => super.getDataFromApi(id));
  }
}
