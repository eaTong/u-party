// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$loginUserAtom = Atom(name: '_AppStore.loginUser');

  @override
  User get loginUser {
    _$loginUserAtom.context.enforceReadPolicy(_$loginUserAtom);
    _$loginUserAtom.reportObserved();
    return super.loginUser;
  }

  @override
  set loginUser(User value) {
    _$loginUserAtom.context.conditionallyRunInAction(() {
      super.loginUser = value;
      _$loginUserAtom.reportChanged();
    }, _$loginUserAtom, name: '${_$loginUserAtom.name}_set');
  }

  final _$quickLoginAsyncAction = AsyncAction('quickLogin');

  @override
  Future<Map<dynamic, dynamic>> quickLogin(String deviceId, dynamic context) {
    return _$quickLoginAsyncAction
        .run(() => super.quickLogin(deviceId, context));
  }

  final _$_AppStoreActionController = ActionController(name: '_AppStore');

  @override
  dynamic loginByAccount(String account, String password) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.loginByAccount(account, password);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'loginUser: ${loginUser.toString()}';
    return '{$string}';
  }
}
