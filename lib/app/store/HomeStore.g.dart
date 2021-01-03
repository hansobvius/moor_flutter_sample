// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$userListAtom = Atom(name: '_HomeStore.userList');

  @override
  ObservableList<User> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(ObservableList<User> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void getAll() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.getAll');
    try {
      return super.getAll();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void insert() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.insert');
    try {
      return super.insert();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteAll() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.deleteAll');
    try {
      return super.deleteAll();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userList: ${userList}
    ''';
  }
}
