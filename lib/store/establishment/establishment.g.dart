// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Establishment _$EstablishmentFromJson(Map<String, dynamic> json) {
  return Establishment()
    ..id = json['id'] as int
    ..type_id = json['type_id'] as int
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..image_avatar = json['image_avatar'] as String
    ..image_avatar_path = json['image_avatar_path'] as String
    ..created_at = json['created_at'] as String
    ..updated_at = json['updated_at'] as String
    ..deleted_at = json['deleted_at'] as String
    ..establishment_branch_count = json['establishment_branch_count'] as int
    ..establishment_branch = (json['establishment_branch'] as List)
        ?.map((e) => e == null
            ? null
            : EstablishmentBranch.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..url = json['url'] as String;
}

Map<String, dynamic> _$EstablishmentToJson(Establishment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_id': instance.type_id,
      'name': instance.name,
      'description': instance.description,
      'image_avatar': instance.image_avatar,
      'image_avatar_path': instance.image_avatar_path,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'establishment_branch_count': instance.establishment_branch_count,
      'establishment_branch': instance.establishment_branch,
      'url': instance.url,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Establishment on _Establishment, Store {
  final _$idAtom = Atom(name: '_Establishment.id');

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

  final _$type_idAtom = Atom(name: '_Establishment.type_id');

  @override
  int get type_id {
    _$type_idAtom.context.enforceReadPolicy(_$type_idAtom);
    _$type_idAtom.reportObserved();
    return super.type_id;
  }

  @override
  set type_id(int value) {
    _$type_idAtom.context.conditionallyRunInAction(() {
      super.type_id = value;
      _$type_idAtom.reportChanged();
    }, _$type_idAtom, name: '${_$type_idAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_Establishment.name');

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

  final _$descriptionAtom = Atom(name: '_Establishment.description');

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

  final _$image_avatarAtom = Atom(name: '_Establishment.image_avatar');

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
      Atom(name: '_Establishment.image_avatar_path');

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

  final _$created_atAtom = Atom(name: '_Establishment.created_at');

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

  final _$updated_atAtom = Atom(name: '_Establishment.updated_at');

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

  final _$deleted_atAtom = Atom(name: '_Establishment.deleted_at');

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

  final _$establishment_branch_countAtom =
      Atom(name: '_Establishment.establishment_branch_count');

  @override
  int get establishment_branch_count {
    _$establishment_branch_countAtom.context
        .enforceReadPolicy(_$establishment_branch_countAtom);
    _$establishment_branch_countAtom.reportObserved();
    return super.establishment_branch_count;
  }

  @override
  set establishment_branch_count(int value) {
    _$establishment_branch_countAtom.context.conditionallyRunInAction(() {
      super.establishment_branch_count = value;
      _$establishment_branch_countAtom.reportChanged();
    }, _$establishment_branch_countAtom,
        name: '${_$establishment_branch_countAtom.name}_set');
  }

  final _$establishment_branchAtom =
      Atom(name: '_Establishment.establishment_branch');

  @override
  List<EstablishmentBranch> get establishment_branch {
    _$establishment_branchAtom.context
        .enforceReadPolicy(_$establishment_branchAtom);
    _$establishment_branchAtom.reportObserved();
    return super.establishment_branch;
  }

  @override
  set establishment_branch(List<EstablishmentBranch> value) {
    _$establishment_branchAtom.context.conditionallyRunInAction(() {
      super.establishment_branch = value;
      _$establishment_branchAtom.reportChanged();
    }, _$establishment_branchAtom,
        name: '${_$establishment_branchAtom.name}_set');
  }
}
