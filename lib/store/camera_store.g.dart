// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CameraStore on _CameraStoreBase, Store {
  late final _$cameraControllerAtom =
      Atom(name: '_CameraStoreBase.cameraController', context: context);

  @override
  CameraController? get cameraController {
    _$cameraControllerAtom.reportRead();
    return super.cameraController;
  }

  @override
  set cameraController(CameraController? value) {
    _$cameraControllerAtom.reportWrite(value, super.cameraController, () {
      super.cameraController = value;
    });
  }

  late final _$canAccessCameraAtom =
      Atom(name: '_CameraStoreBase.canAccessCamera', context: context);

  @override
  bool get canAccessCamera {
    _$canAccessCameraAtom.reportRead();
    return super.canAccessCamera;
  }

  @override
  set canAccessCamera(bool value) {
    _$canAccessCameraAtom.reportWrite(value, super.canAccessCamera, () {
      super.canAccessCamera = value;
    });
  }

  late final _$cameraImageAtom =
      Atom(name: '_CameraStoreBase.cameraImage', context: context);

  @override
  CameraImage? get cameraImage {
    _$cameraImageAtom.reportRead();
    return super.cameraImage;
  }

  @override
  set cameraImage(CameraImage? value) {
    _$cameraImageAtom.reportWrite(value, super.cameraImage, () {
      super.cameraImage = value;
    });
  }

  late final _$fabEnabledAtom =
      Atom(name: '_CameraStoreBase.fabEnabled', context: context);

  @override
  bool get fabEnabled {
    _$fabEnabledAtom.reportRead();
    return super.fabEnabled;
  }

  @override
  set fabEnabled(bool value) {
    _$fabEnabledAtom.reportWrite(value, super.fabEnabled, () {
      super.fabEnabled = value;
    });
  }

  late final _$_CameraStoreBaseActionController =
      ActionController(name: '_CameraStoreBase', context: context);

  @override
  dynamic setAccessCamera(bool value) {
    final _$actionInfo = _$_CameraStoreBaseActionController.startAction(
        name: '_CameraStoreBase.setAccessCamera');
    try {
      return super.setAccessCamera(value);
    } finally {
      _$_CameraStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCameraImage(CameraImage value) {
    final _$actionInfo = _$_CameraStoreBaseActionController.startAction(
        name: '_CameraStoreBase.setCameraImage');
    try {
      return super.setCameraImage(value);
    } finally {
      _$_CameraStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFabButton(bool value) {
    final _$actionInfo = _$_CameraStoreBaseActionController.startAction(
        name: '_CameraStoreBase.setFabButton');
    try {
      return super.setFabButton(value);
    } finally {
      _$_CameraStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cameraController: ${cameraController},
canAccessCamera: ${canAccessCamera},
cameraImage: ${cameraImage},
fabEnabled: ${fabEnabled}
    ''';
  }
}
