// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SafetyEquipment _$SafetyEquipmentFromJson(Map<String, dynamic> json) {
  return SafetyEquipment()
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String
    ..typeId = json['typeId'] as int
    ..typeName = json['typeName'] as String
    ..serialNumber = json['serialNumber'] as String
    ..warranty_expiration_date = json['warranty_expiration_date'] as String
    ..adminigDateinService = json['adminigDateinService'] as String
    ..expiration_date = json['expiration_date'] as String
    ..is_expiration_warranty = json['is_expiration_warranty'] as bool
    ..is_expiration = json['is_expiration'] as bool
    ..image_avatar = json['image_avatar'] as String
    ..image_avatar_path = json['image_avatar_path'] as String
    ..classId = json['classId'] as int
    ..buildingId = json['buildingId'] as int
    ..id = json['id'] as int
    ..state = json['state'] as bool
    ..branchBuilding = json['branchBuilding'] == null
        ? null
        : BranchBuilding.fromJson(
            json['branchBuilding'] as Map<String, dynamic>)
    ..establishment = json['establishment'] == null
        ? null
        : Establishment.fromJson(json['establishment'] as Map<String, dynamic>)
    ..establishment_branch = json['establishment_branch'] == null
        ? null
        : EstablishmentBranch.fromJson(
            json['establishment_branch'] as Map<String, dynamic>)
    ..url = json['url'] as String;
}

Map<String, dynamic> _$SafetyEquipmentToJson(SafetyEquipment instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'typeId': instance.typeId,
      'typeName': instance.typeName,
      'serialNumber': instance.serialNumber,
      'warranty_expiration_date': instance.warranty_expiration_date,
      'adminigDateinService': instance.adminigDateinService,
      'expiration_date': instance.expiration_date,
      'is_expiration_warranty': instance.is_expiration_warranty,
      'is_expiration': instance.is_expiration,
      'image_avatar': instance.image_avatar,
      'image_avatar_path': instance.image_avatar_path,
      'classId': instance.classId,
      'buildingId': instance.buildingId,
      'id': instance.id,
      'state': instance.state,
      'branchBuilding': instance.branchBuilding,
      'establishment': instance.establishment,
      'establishment_branch': instance.establishment_branch,
      'url': instance.url,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$SafetyEquipment on _SafetyEquipment, Store {
  final _$createdAtAtom = Atom(name: '_SafetyEquipment.createdAt');

  @override
  String get createdAt {
    _$createdAtAtom.context.enforceReadPolicy(_$createdAtAtom);
    _$createdAtAtom.reportObserved();
    return super.createdAt;
  }

  @override
  set createdAt(String value) {
    _$createdAtAtom.context.conditionallyRunInAction(() {
      super.createdAt = value;
      _$createdAtAtom.reportChanged();
    }, _$createdAtAtom, name: '${_$createdAtAtom.name}_set');
  }

  final _$updatedAtAtom = Atom(name: '_SafetyEquipment.updatedAt');

  @override
  String get updatedAt {
    _$updatedAtAtom.context.enforceReadPolicy(_$updatedAtAtom);
    _$updatedAtAtom.reportObserved();
    return super.updatedAt;
  }

  @override
  set updatedAt(String value) {
    _$updatedAtAtom.context.conditionallyRunInAction(() {
      super.updatedAt = value;
      _$updatedAtAtom.reportChanged();
    }, _$updatedAtAtom, name: '${_$updatedAtAtom.name}_set');
  }

  final _$typeIdAtom = Atom(name: '_SafetyEquipment.typeId');

  @override
  int get typeId {
    _$typeIdAtom.context.enforceReadPolicy(_$typeIdAtom);
    _$typeIdAtom.reportObserved();
    return super.typeId;
  }

  @override
  set typeId(int value) {
    _$typeIdAtom.context.conditionallyRunInAction(() {
      super.typeId = value;
      _$typeIdAtom.reportChanged();
    }, _$typeIdAtom, name: '${_$typeIdAtom.name}_set');
  }

  final _$typeNameAtom = Atom(name: '_SafetyEquipment.typeName');

  @override
  String get typeName {
    _$typeNameAtom.context.enforceReadPolicy(_$typeNameAtom);
    _$typeNameAtom.reportObserved();
    return super.typeName;
  }

  @override
  set typeName(String value) {
    _$typeNameAtom.context.conditionallyRunInAction(() {
      super.typeName = value;
      _$typeNameAtom.reportChanged();
    }, _$typeNameAtom, name: '${_$typeNameAtom.name}_set');
  }

  final _$serialNumberAtom = Atom(name: '_SafetyEquipment.serialNumber');

  @override
  String get serialNumber {
    _$serialNumberAtom.context.enforceReadPolicy(_$serialNumberAtom);
    _$serialNumberAtom.reportObserved();
    return super.serialNumber;
  }

  @override
  set serialNumber(String value) {
    _$serialNumberAtom.context.conditionallyRunInAction(() {
      super.serialNumber = value;
      _$serialNumberAtom.reportChanged();
    }, _$serialNumberAtom, name: '${_$serialNumberAtom.name}_set');
  }

  final _$warranty_expiration_dateAtom =
      Atom(name: '_SafetyEquipment.warranty_expiration_date');

  @override
  String get warranty_expiration_date {
    _$warranty_expiration_dateAtom.context
        .enforceReadPolicy(_$warranty_expiration_dateAtom);
    _$warranty_expiration_dateAtom.reportObserved();
    return super.warranty_expiration_date;
  }

  @override
  set warranty_expiration_date(String value) {
    _$warranty_expiration_dateAtom.context.conditionallyRunInAction(() {
      super.warranty_expiration_date = value;
      _$warranty_expiration_dateAtom.reportChanged();
    }, _$warranty_expiration_dateAtom,
        name: '${_$warranty_expiration_dateAtom.name}_set');
  }

  final _$adminigDateinServiceAtom =
      Atom(name: '_SafetyEquipment.adminigDateinService');

  @override
  String get adminigDateinService {
    _$adminigDateinServiceAtom.context
        .enforceReadPolicy(_$adminigDateinServiceAtom);
    _$adminigDateinServiceAtom.reportObserved();
    return super.adminigDateinService;
  }

  @override
  set adminigDateinService(String value) {
    _$adminigDateinServiceAtom.context.conditionallyRunInAction(() {
      super.adminigDateinService = value;
      _$adminigDateinServiceAtom.reportChanged();
    }, _$adminigDateinServiceAtom,
        name: '${_$adminigDateinServiceAtom.name}_set');
  }

  final _$expiration_dateAtom = Atom(name: '_SafetyEquipment.expiration_date');

  @override
  String get expiration_date {
    _$expiration_dateAtom.context.enforceReadPolicy(_$expiration_dateAtom);
    _$expiration_dateAtom.reportObserved();
    return super.expiration_date;
  }

  @override
  set expiration_date(String value) {
    _$expiration_dateAtom.context.conditionallyRunInAction(() {
      super.expiration_date = value;
      _$expiration_dateAtom.reportChanged();
    }, _$expiration_dateAtom, name: '${_$expiration_dateAtom.name}_set');
  }

  final _$is_expiration_warrantyAtom =
      Atom(name: '_SafetyEquipment.is_expiration_warranty');

  @override
  bool get is_expiration_warranty {
    _$is_expiration_warrantyAtom.context
        .enforceReadPolicy(_$is_expiration_warrantyAtom);
    _$is_expiration_warrantyAtom.reportObserved();
    return super.is_expiration_warranty;
  }

  @override
  set is_expiration_warranty(bool value) {
    _$is_expiration_warrantyAtom.context.conditionallyRunInAction(() {
      super.is_expiration_warranty = value;
      _$is_expiration_warrantyAtom.reportChanged();
    }, _$is_expiration_warrantyAtom,
        name: '${_$is_expiration_warrantyAtom.name}_set');
  }

  final _$is_expirationAtom = Atom(name: '_SafetyEquipment.is_expiration');

  @override
  bool get is_expiration {
    _$is_expirationAtom.context.enforceReadPolicy(_$is_expirationAtom);
    _$is_expirationAtom.reportObserved();
    return super.is_expiration;
  }

  @override
  set is_expiration(bool value) {
    _$is_expirationAtom.context.conditionallyRunInAction(() {
      super.is_expiration = value;
      _$is_expirationAtom.reportChanged();
    }, _$is_expirationAtom, name: '${_$is_expirationAtom.name}_set');
  }

  final _$image_avatarAtom = Atom(name: '_SafetyEquipment.image_avatar');

  @override
  String get image_avatar {
    _$image_avatarAtom.context.enforceReadPolicy(_$image_avatarAtom);
    _$image_avatarAtom.reportObserved();
    return super.image_avatar;
  }

  @override
  set image_avatar(String value) {
    _$image_avatarAtom.context.conditionallyRunInAction(() {
      super.image_avatar = value;
      _$image_avatarAtom.reportChanged();
    }, _$image_avatarAtom, name: '${_$image_avatarAtom.name}_set');
  }

  final _$image_avatar_pathAtom =
      Atom(name: '_SafetyEquipment.image_avatar_path');

  @override
  String get image_avatar_path {
    _$image_avatar_pathAtom.context.enforceReadPolicy(_$image_avatar_pathAtom);
    _$image_avatar_pathAtom.reportObserved();
    return super.image_avatar_path;
  }

  @override
  set image_avatar_path(String value) {
    _$image_avatar_pathAtom.context.conditionallyRunInAction(() {
      super.image_avatar_path = value;
      _$image_avatar_pathAtom.reportChanged();
    }, _$image_avatar_pathAtom, name: '${_$image_avatar_pathAtom.name}_set');
  }

  final _$classIdAtom = Atom(name: '_SafetyEquipment.classId');

  @override
  int get classId {
    _$classIdAtom.context.enforceReadPolicy(_$classIdAtom);
    _$classIdAtom.reportObserved();
    return super.classId;
  }

  @override
  set classId(int value) {
    _$classIdAtom.context.conditionallyRunInAction(() {
      super.classId = value;
      _$classIdAtom.reportChanged();
    }, _$classIdAtom, name: '${_$classIdAtom.name}_set');
  }

  final _$buildingIdAtom = Atom(name: '_SafetyEquipment.buildingId');

  @override
  int get buildingId {
    _$buildingIdAtom.context.enforceReadPolicy(_$buildingIdAtom);
    _$buildingIdAtom.reportObserved();
    return super.buildingId;
  }

  @override
  set buildingId(int value) {
    _$buildingIdAtom.context.conditionallyRunInAction(() {
      super.buildingId = value;
      _$buildingIdAtom.reportChanged();
    }, _$buildingIdAtom, name: '${_$buildingIdAtom.name}_set');
  }

  final _$idAtom = Atom(name: '_SafetyEquipment.id');

  @override
  int get id {
    _$idAtom.context.enforceReadPolicy(_$idAtom);
    _$idAtom.reportObserved();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.context.conditionallyRunInAction(() {
      super.id = value;
      _$idAtom.reportChanged();
    }, _$idAtom, name: '${_$idAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_SafetyEquipment.state');

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

  final _$branchBuildingAtom = Atom(name: '_SafetyEquipment.branchBuilding');

  @override
  BranchBuilding get branchBuilding {
    _$branchBuildingAtom.context.enforceReadPolicy(_$branchBuildingAtom);
    _$branchBuildingAtom.reportObserved();
    return super.branchBuilding;
  }

  @override
  set branchBuilding(BranchBuilding value) {
    _$branchBuildingAtom.context.conditionallyRunInAction(() {
      super.branchBuilding = value;
      _$branchBuildingAtom.reportChanged();
    }, _$branchBuildingAtom, name: '${_$branchBuildingAtom.name}_set');
  }

  final _$establishmentAtom = Atom(name: '_SafetyEquipment.establishment');

  @override
  Establishment get establishment {
    _$establishmentAtom.context.enforceReadPolicy(_$establishmentAtom);
    _$establishmentAtom.reportObserved();
    return super.establishment;
  }

  @override
  set establishment(Establishment value) {
    _$establishmentAtom.context.conditionallyRunInAction(() {
      super.establishment = value;
      _$establishmentAtom.reportChanged();
    }, _$establishmentAtom, name: '${_$establishmentAtom.name}_set');
  }

  final _$establishment_branchAtom =
      Atom(name: '_SafetyEquipment.establishment_branch');

  @override
  EstablishmentBranch get establishment_branch {
    _$establishment_branchAtom.context
        .enforceReadPolicy(_$establishment_branchAtom);
    _$establishment_branchAtom.reportObserved();
    return super.establishment_branch;
  }

  @override
  set establishment_branch(EstablishmentBranch value) {
    _$establishment_branchAtom.context.conditionallyRunInAction(() {
      super.establishment_branch = value;
      _$establishment_branchAtom.reportChanged();
    }, _$establishment_branchAtom,
        name: '${_$establishment_branchAtom.name}_set');
  }

  final _$getDataFromApiAsyncAction = AsyncAction('getDataFromApi');

  @override
  Future<bool> getDataFromApi(String equipmentID) {
    return _$getDataFromApiAsyncAction
        .run(() => super.getDataFromApi(equipmentID));
  }
}
