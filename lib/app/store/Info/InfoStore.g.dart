// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InfoStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InfoStore on _InfoStore, Store {
  late final _$infoModelAtom =
      Atom(name: '_InfoStore.infoModel', context: context);

  @override
  ObservableList<InfoModel> get infoModel {
    _$infoModelAtom.reportRead();
    return super.infoModel;
  }

  @override
  set infoModel(ObservableList<InfoModel> value) {
    _$infoModelAtom.reportWrite(value, super.infoModel, () {
      super.infoModel = value;
    });
  }

  late final _$getInfoModelListAsyncAction =
      AsyncAction('_InfoStore.getInfoModelList', context: context);

  @override
  Future<dynamic> getInfoModelList() {
    return _$getInfoModelListAsyncAction.run(() => super.getInfoModelList());
  }

  @override
  String toString() {
    return '''
infoModel: ${infoModel}
    ''';
  }
}
