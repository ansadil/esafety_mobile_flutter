// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Auth on _Auth, Store {
  final _$tokenAtom = Atom(name: '_Auth.token');

  @override
  String get token {
    _$tokenAtom.context.enforceReadPolicy(_$tokenAtom);
    _$tokenAtom.reportObserved();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.context.conditionallyRunInAction(() {
      super.token = value;
      _$tokenAtom.reportChanged();
    }, _$tokenAtom, name: '${_$tokenAtom.name}_set');
  }

  final _$userAtom = Atom(name: '_Auth.user');

  @override
  User get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$islogedAtom = Atom(name: '_Auth.isloged');

  @override
  bool get isloged {
    _$islogedAtom.context.enforceReadPolicy(_$islogedAtom);
    _$islogedAtom.reportObserved();
    return super.isloged;
  }

  @override
  set isloged(bool value) {
    _$islogedAtom.context.conditionallyRunInAction(() {
      super.isloged = value;
      _$islogedAtom.reportChanged();
    }, _$islogedAtom, name: '${_$islogedAtom.name}_set');
  }

  final _$getAuthFromApiAsyncAction = AsyncAction('getAuthFromApi');

  @override
  Future<bool> getAuthFromApi(String email, String password) {
    return _$getAuthFromApiAsyncAction
        .run(() => super.getAuthFromApi(email, password));
  }

  final _$saveAuthTokenAsyncAction = AsyncAction('saveAuthToken');

  @override
  Future<bool> saveAuthToken(String newToken) {
    return _$saveAuthTokenAsyncAction.run(() => super.saveAuthToken(newToken));
  }

  final _$getAuthUserAsyncAction = AsyncAction('getAuthUser');

  @override
  Future<String> getAuthUser() {
    return _$getAuthUserAsyncAction.run(() => super.getAuthUser());
  }

  final _$checkIfAuthenticatedAsyncAction = AsyncAction('checkIfAuthenticated');

  @override
  Future<bool> checkIfAuthenticated() {
    return _$checkIfAuthenticatedAsyncAction
        .run(() => super.checkIfAuthenticated());
  }

  final _$getAuthTokenAsyncAction = AsyncAction('getAuthToken');

  @override
  Future<String> getAuthToken() {
    return _$getAuthTokenAsyncAction.run(() => super.getAuthToken());
  }

  final _$saveAuthUserAsyncAction = AsyncAction('saveAuthUser');

  @override
  Future<bool> saveAuthUser(String newUser) {
    return _$saveAuthUserAsyncAction.run(() => super.saveAuthUser(newUser));
  }

  final _$removeAuthAsyncAction = AsyncAction('removeAuth');

  @override
  Future<dynamic> removeAuth() {
    return _$removeAuthAsyncAction.run(() => super.removeAuth());
  }

  final _$_AuthActionController = ActionController(name: '_Auth');

  @override
  void getTokingfromSharedPreferences() {
    final _$actionInfo = _$_AuthActionController.startAction();
    try {
      return super.getTokingfromSharedPreferences();
    } finally {
      _$_AuthActionController.endAction(_$actionInfo);
    }
  }
}
