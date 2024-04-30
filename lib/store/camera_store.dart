// ignore_for_file: library_private_types_in_public_api

import 'package:camera/camera.dart';
import 'package:mobx/mobx.dart';
part 'camera_store.g.dart';

class CameraStore = _CameraStoreBase with _$CameraStore;

abstract class _CameraStoreBase with Store {
  @observable
  CameraController? cameraController;

  @observable
  bool canAccessCamera = false;

  @action
  setAccessCamera(bool value) => canAccessCamera = value;

  @observable
  CameraImage? cameraImage;
  @action
  setCameraImage(CameraImage value) => cameraImage = value;
}
