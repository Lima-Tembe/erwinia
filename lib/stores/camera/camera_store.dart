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
  
}
