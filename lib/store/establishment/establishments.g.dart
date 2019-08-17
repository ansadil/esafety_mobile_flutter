// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Establishments _$EstablishmentsFromJson(Map<String, dynamic> json) {
  return Establishments()
    ..url = json['url'] as String
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : Establishment.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..state = json['state'] as String;
}

Map<String, dynamic> _$EstablishmentsToJson(Establishments instance) =>
    <String, dynamic>{
      'url': instance.url,
      'data': instance.data,
      'state': instance.state,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Establishments on _Establishments, Store {
  final _$dataAtom = Atom(name: '_Establishments.data');

  @override
  List<Establishment> get data {
    _$dataAtom.context.enforceReadPolicy(_$dataAtom);
    _$dataAtom.reportObserved();
    return super.data;
  }

  @override
  set data(List<Establishment> value) {
    _$dataAtom.context.conditionallyRunInAction(() {
      super.data = value;
      _$dataAtom.reportChanged();
    }, _$dataAtom, name: '${_$dataAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_Establishments.state');

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

  final _$getDataFromApiAsyncAction = AsyncAction('getDataFromApi');

  @override
  Future<bool> getDataFromApi() {
    return _$getDataFromApiAsyncAction.run(() => super.getDataFromApi());
  }
}
