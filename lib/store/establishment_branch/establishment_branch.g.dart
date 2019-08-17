// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EstablishmentBranch _$EstablishmentBranchFromJson(Map<String, dynamic> json) {
  return EstablishmentBranch()
    ..id = json['id'] as int
    ..establishment_id = json['establishment_id'] as int
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..image_avatar = json['image_avatar'] as String
    ..image_avatar_path = json['image_avatar_path'] as String
    ..created_at = json['created_at'] as String
    ..updated_at = json['updated_at'] as String
    ..deleted_at = json['deleted_at'] as String
    ..branch_building_count = json['branch_building_count'] as int
    ..branch_building = (json['branch_building'] as List)
        ?.map((e) => e == null
            ? null
            : BranchBuilding.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..url = json['url'] as String
    ..state = json['state'] as String;
}

Map<String, dynamic> _$EstablishmentBranchToJson(
        EstablishmentBranch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'establishment_id': instance.establishment_id,
      'name': instance.name,
      'description': instance.description,
      'image_avatar': instance.image_avatar,
      'image_avatar_path': instance.image_avatar_path,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'branch_building_count': instance.branch_building_count,
      'branch_building': instance.branch_building,
      'url': instance.url,
      'state': instance.state,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$EstablishmentBranch on _EstablishmentBranch, Store {
  final _$idAtom = Atom(name: '_EstablishmentBranch.id');

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

  final _$establishment_idAtom =
      Atom(name: '_EstablishmentBranch.establishment_id');

  @override
  int get establishment_id {
    _$establishment_idAtom.context.enforceReadPolicy(_$establishment_idAtom);
    _$establishment_idAtom.reportObserved();
    return super.establishment_id;
  }

  @override
  set establishment_id(int value) {
    _$establishment_idAtom.context.conditionallyRunInAction(() {
      super.establishment_id = value;
      _$establishment_idAtom.reportChanged();
    }, _$establishment_idAtom, name: '${_$establishment_idAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_EstablishmentBranch.name');

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

  final _$descriptionAtom = Atom(name: '_EstablishmentBranch.description');

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

  final _$image_avatarAtom = Atom(name: '_EstablishmentBranch.image_avatar');

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
      Atom(name: '_EstablishmentBranch.image_avatar_path');

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

  final _$created_atAtom = Atom(name: '_EstablishmentBranch.created_at');

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

  final _$updated_atAtom = Atom(name: '_EstablishmentBranch.updated_at');

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

  final _$deleted_atAtom = Atom(name: '_EstablishmentBranch.deleted_at');

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

  final _$branch_building_countAtom =
      Atom(name: '_EstablishmentBranch.branch_building_count');

  @override
  int get branch_building_count {
    _$branch_building_countAtom.context
        .enforceReadPolicy(_$branch_building_countAtom);
    _$branch_building_countAtom.reportObserved();
    return super.branch_building_count;
  }

  @override
  set branch_building_count(int value) {
    _$branch_building_countAtom.context.conditionallyRunInAction(() {
      super.branch_building_count = value;
      _$branch_building_countAtom.reportChanged();
    }, _$branch_building_countAtom,
        name: '${_$branch_building_countAtom.name}_set');
  }

  final _$branch_buildingAtom =
      Atom(name: '_EstablishmentBranch.branch_building');

  @override
  List<BranchBuilding> get branch_building {
    _$branch_buildingAtom.context.enforceReadPolicy(_$branch_buildingAtom);
    _$branch_buildingAtom.reportObserved();
    return super.branch_building;
  }

  @override
  set branch_building(List<BranchBuilding> value) {
    _$branch_buildingAtom.context.conditionallyRunInAction(() {
      super.branch_building = value;
      _$branch_buildingAtom.reportChanged();
    }, _$branch_buildingAtom, name: '${_$branch_buildingAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_EstablishmentBranch.state');

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
  Future<bool> getDataFromApi(int id) {
    return _$getDataFromApiAsyncAction.run(() => super.getDataFromApi(id));
  }
}
