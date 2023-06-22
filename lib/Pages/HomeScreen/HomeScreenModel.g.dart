// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModel, Store {
  late final _$isAppLoadingAtom =
      Atom(name: '_HomeScreenModel.isAppLoading', context: context);

  @override
  bool get isAppLoading {
    _$isAppLoadingAtom.reportRead();
    return super.isAppLoading;
  }

  @override
  set isAppLoading(bool value) {
    _$isAppLoadingAtom.reportWrite(value, super.isAppLoading, () {
      super.isAppLoading = value;
    });
  }

  late final _$_HomeScreenModelActionController =
      ActionController(name: '_HomeScreenModel', context: context);

  @override
  void setIsAvengersLoading({required bool isLoading}) {
    final _$actionInfo = _$_HomeScreenModelActionController.startAction(
        name: '_HomeScreenModel.setIsAvengersLoading');
    try {
      return super.setIsAvengersLoading(isLoading: isLoading);
    } finally {
      _$_HomeScreenModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isAppLoading: ${isAppLoading}
    ''';
  }
}
