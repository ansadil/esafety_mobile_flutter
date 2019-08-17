// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_building.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchBuilding _$BranchBuildingFromJson(Map<String, dynamic> json) {
  return BranchBuilding()
    ..id = json['id'] as int
    ..branch_id = json['branch_id'] as int
    ..buildingsType_id = json['buildingsType_id'] as int
    ..name = json['name'] as String
    ..NumberOfFloors = json['NumberOfFloors'] as int
    ..locationGPS = json['locationGPS'] as String
    ..description = json['description'] as String
    ..image_avatar = json['image_avatar'] as String
    ..image_avatar_path = json['image_avatar_path'] as String
    ..created_at = json['created_at'] as String
    ..updated_at = json['updated_at'] as String
    ..deleted_at = json['deleted_at'] as String
    ..buildings_equipment_count = json['buildings_equipment_count'] as int
    ..state = json['state'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$BranchBuildingToJson(BranchBuilding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branch_id': instance.branch_id,
      'buildingsType_id': instance.buildingsType_id,
      'name': instance.name,
      'NumberOfFloors': instance.NumberOfFloors,
      'locationGPS': instance.locationGPS,
      'description': instance.description,
      'image_avatar': instance.image_avatar,
      'image_avatar_path': instance.image_avatar_path,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'buildings_equipment_count': instance.buildings_equipment_count,
      'state': instance.state,
      'url': instance.url,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$BranchBuilding on _BranchBuilding, Store {
  final _$idAtom = Atom(name: '_BranchBuilding.id');

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

  final _$branch_idAtom = Atom(name: '_BranchBuilding.branch_id');

  @override
  int get branch_id {
    _$branch_idAtom.context.enforceReadPolicy(_$branch_idAtom);
    _$branch_idAtom.reportObserved();
    return super.branch_id;
  }

  @override
  set branch_id(int value) {
    _$branch_idAtom.context.conditionallyRunInAction(() {
      super.branch_id = value;
      _$branch_idAtom.reportChanged();
    }, _$branch_idAtom, name: '${_$branch_idAtom.name}_set');
  }

  final _$buildingsType_idAtom = Atom(name: '_BranchBuilding.buildingsType_id');

  @override
  int get buildingsType_id {
    _$buildingsType_idAtom.context.enforceReadPolicy(_$buildingsType_idAtom);
    _$buildingsType_idAtom.reportObserved();
    return super.buildingsType_id;
  }

  @override
  set buildingsType_id(int value) {
    _$buildingsType_idAtom.context.conditionallyRunInAction(() {
      super.buildingsType_id = value;
      _$buildingsType_idAtom.reportChanged();
    }, _$buildingsType_idAtom, name: '${_$buildingsType_idAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_BranchBuilding.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$NumberOfFloorsAtom = Atom(name: '_BranchBuilding.NumberOfFloors');

  @override
  int get NumberOfFloors {
    _$NumberOfFloorsAtom.context.enforceReadPolicy(_$NumberOfFloorsAtom);
    _$NumberOfFloorsAtom.reportObserved();
    return super.NumberOfFloors;
  }

  @override
  set NumberOfFloors(int value) {
    _$NumberOfFloorsAtom.context.conditionallyRunInAction(() {
      super.NumberOfFloors = value;
      _$NumberOfFloorsAtom.reportChanged();
    }, _$NumberOfFloorsAtom, name: '${_$NumberOfFloorsAtom.name}_set');
  }

  final _$locationGPSAtom = Atom(name: '_BranchBuilding.locationGPS');

  @override
  String get locationGPS {
    _$locationGPSAtom.context.enforceReadPolicy(_$locationGPSAtom);
    _$locationGPSAtom.reportObserved();
    return super.locationGPS;
  }

  @override
  set locationGPS(String value) {
    _$locationGPSAtom.context.conditionallyRunInAction(() {
      super.locationGPS = value;
      _$locationGPSAtom.reportChanged();
    }, _$locationGPSAtom, name: '${_$locationGPSAtom.name}_set');
  }

  final _$descriptionAtom = Atom(name: '_BranchBuilding.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$image_avatarAtom = Atom(name: '_BranchBuilding.image_avatar');

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
      Atom(name: '_BranchBuilding.image_avatar_path');

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

  final _$created_atAtom = Atom(name: '_BranchBuilding.created_at');

  @override
  String get created_at {
    _$created_atAtom.context.enforceReadPolicy(_$created_atAtom);
    _$created_atAtom.reportObserved();
    return super.created_at;
  }

  @override
  set created_at(String value) {
    _$created_atAtom.context.conditionallyRunInAction(() {
      super.created_at = value;
      _$created_atAtom.reportChanged();
    }, _$created_atAtom, name: '${_$created_atAtom.name}_set');
  }

  final _$updated_atAtom = Atom(name: '_BranchBuilding.updated_at');

  @override
  String get updated_at {
    _$updated_atAtom.context.enforceReadPolicy(_$updated_atAtom);
    _$updated_atAtom.reportObserved();
    return super.updated_at;
  }

  @override
  set updated_at(String value) {
    _$updated_atAtom.context.conditionallyRunInAction(() {
      super.updated_at = value;
      _$updated_atAtom.reportChanged();
    }, _$updated_atAtom, name: '${_$updated_atAtom.name}_set');
  }

  final _$deleted_atAtom = Atom(name: '_BranchBuilding.deleted_at');

  @override
  String get deleted_at {
    _$deleted_atAtom.context.enforceReadPolicy(_$deleted_atAtom);
    _$deleted_atAtom.reportObserved();
    return super.deleted_at;
  }

  @override
  set deleted_at(String value) {
    _$deleted_atAtom.context.conditionallyRunInAction(() {
      super.deleted_at = value;
      _$deleted_atAtom.reportChanged();
    }, _$deleted_atAtom, name: '${_$deleted_atAtom.name}_set');
  }

  final _$buildings_equipment_countAtom =
      Atom(name: '_BranchBuilding.buildings_equipment_count');

  @override
  int get buildings_equipment_count {
    _$buildings_equipment_countAtom.context
        .enforceReadPolicy(_$buildings_equipment_countAtom);
    _$buildings_equipment_countAtom.reportObserved();
    return super.buildings_equipment_count;
  }

  @override
  set buildings_equipment_count(int value) {
    _$buildings_equipment_countAtom.context.conditionallyRunInAction(() {
      super.buildings_equipment_count = value;
      _$buildings_equipment_countAtom.reportChanged();
    }, _$buildings_equipment_countAtom,
        name: '${_$buildings_equipment_countAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_BranchBuilding.state');

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
}
