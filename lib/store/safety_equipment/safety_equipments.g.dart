// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_equipments.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$SafetyEquipments on _SafetyEquipments, Store {
  final _$urlAtom = Atom(name: '_SafetyEquipments.url');

  @override
  String get url {
    _$urlAtom.context.enforceReadPolicy(_$urlAtom);
    _$urlAtom.reportObserved();
    return super.url;
  }

  @override
  set url(String value) {
    _$urlAtom.context.conditionallyRunInAction(() {
      super.url = value;
      _$urlAtom.reportChanged();
    }, _$urlAtom, name: '${_$urlAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_SafetyEquipments.state');

  @override
  String get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(String value) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom.name}_set');
  }

  final _$dataAtom = Atom(name: '_SafetyEquipments.data');

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
