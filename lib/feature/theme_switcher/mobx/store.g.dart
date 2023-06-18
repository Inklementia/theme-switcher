// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeSwitcherStore on _SwitcherStore, Store {
  late final _$isLightAtom =
      Atom(name: '_SwitcherStore.isLight', context: context);

  @override
  bool get isLight {
    _$isLightAtom.reportRead();
    return super.isLight;
  }

  @override
  set isLight(bool value) {
    _$isLightAtom.reportWrite(value, super.isLight, () {
      super.isLight = value;
    });
  }

  late final _$themeAtom = Atom(name: '_SwitcherStore.theme', context: context);

  @override
  AppTheme? get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(AppTheme? value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  late final _$historyListAtom =
      Atom(name: '_SwitcherStore.historyList', context: context);

  @override
  List<String> get historyList {
    _$historyListAtom.reportRead();
    return super.historyList;
  }

  @override
  set historyList(List<String> value) {
    _$historyListAtom.reportWrite(value, super.historyList, () {
      super.historyList = value;
    });
  }

  late final _$_SwitcherStoreActionController =
      ActionController(name: '_SwitcherStore', context: context);

  @override
  void setTheme(AppTheme value) {
    final _$actionInfo = _$_SwitcherStoreActionController.startAction(
        name: '_SwitcherStore.setTheme');
    try {
      return super.setTheme(value);
    } finally {
      _$_SwitcherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLight(bool value) {
    final _$actionInfo = _$_SwitcherStoreActionController.startAction(
        name: '_SwitcherStore.setIsLight');
    try {
      return super.setIsLight(value);
    } finally {
      _$_SwitcherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHistoryList(List<String> value) {
    final _$actionInfo = _$_SwitcherStoreActionController.startAction(
        name: '_SwitcherStore.setHistoryList');
    try {
      return super.setHistoryList(value);
    } finally {
      _$_SwitcherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLight: ${isLight},
theme: ${theme},
historyList: ${historyList}
    ''';
  }
}
