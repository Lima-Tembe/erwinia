// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DiseaseStore on _DiseaseStoreBase, Store {
  late final _$diseaseDataAtom =
      Atom(name: '_DiseaseStoreBase.diseaseData', context: context);

  @override
  List<dynamic> get diseaseData {
    _$diseaseDataAtom.reportRead();
    return super.diseaseData;
  }

  @override
  set diseaseData(List<dynamic> value) {
    _$diseaseDataAtom.reportWrite(value, super.diseaseData, () {
      super.diseaseData = value;
    });
  }

  @override
  String toString() {
    return '''
diseaseData: ${diseaseData}
    ''';
  }
}
