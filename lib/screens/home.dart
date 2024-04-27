import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FlashMode currentFlashMode = FlashMode.auto;
  CameraController? cameraController;
  bool canAccessCamera = false;

  final Map<String, FlashMode> flashModes = {
    "always": FlashMode.always,
    "auto": FlashMode.auto,
    "off": FlashMode.off,
    "torch": FlashMode.torch,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set background to transparent
        elevation: 0.0, // Remove shadow as it might conflict with gradient
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter, // Start the gradient from top
              end: Alignment.bottomCenter, // End the gradient at bottom
              colors: [
                Colors.black,
                Colors.transparent
              ], // Colors - black to transparent
            ),
          ),
        ),
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text(
          "Erwinia AI",
          style: TextStyle(color: Colors.white70),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.black,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: SizedBox.expand(
          child: canAccessCamera
              ? CameraPreview(cameraController!)
              : Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      await cameraPermission(context);
                      setState(() {});
                    },
                    child: const Text(
                      "Dar acesso a camera",
                    ),
                  ),
                ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: canAccessCamera,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 104),
          child: SizedBox(
            width: 80,
            height: 80,
            child: FloatingActionButton(
              onPressed: () async {},
              backgroundColor:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.9),
              foregroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: const BorderSide(
                  color: Colors.green,
                  width: 4,
                ),
              ),
              child: const Icon(
                Icons.energy_savings_leaf_rounded,
                size: 32,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onFlashModeSelected(FlashMode selectedFlashMode) {
    setState(() {
      if (mounted) {
        currentFlashMode = selectedFlashMode;
        cameraController?.setFlashMode(currentFlashMode);
      }
    });
  }

  IconData _getFlashIcon() {
    switch (currentFlashMode) {
      case FlashMode.always:
        return Icons.flash_on_rounded;
      case FlashMode.auto:
        return Icons.flash_auto_rounded;
      case FlashMode.off:
        return Icons.flash_off_rounded;
      case FlashMode.torch:
        return Icons.flash_on_rounded;
      default:
        return Icons.flash_auto_rounded;
    }
  }

  void _toggleFlashMode() {
    switch (currentFlashMode) {
      case FlashMode.always:
        _onFlashModeSelected(FlashMode.auto);
        break;
      case FlashMode.auto:
        _onFlashModeSelected(FlashMode.torch);
        break;
      case FlashMode.torch:
        _onFlashModeSelected(FlashMode.off);
        break;
      default:
        _onFlashModeSelected(FlashMode.always);
        break;
    }
  }

  Future<void> cameraPermission(BuildContext context) async {
    List<CameraDescription> cameras;
    PermissionStatus status = await Permission.camera.request();
    if (status == PermissionStatus.granted) {
      cameras = await availableCameras();
      cameraController = CameraController(cameras[0], ResolutionPreset.high);
      cameraController?.initialize().then((value) => {
            cameraController?.setFlashMode(currentFlashMode).then((value) {
              if (mounted) {
                setState(() {
                  canAccessCamera = true;
                });
              }
            }),
          });
    } else if (status == PermissionStatus.denied) {
      final currentContext = context;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showDialog(
          context: currentContext,
          builder: (context) => AlertDialog(
            title: Text(
              "Permissão de Camera",
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            content: Text(
              "Deve permitir acesso a camera para continuar a usar o aplicativo!",
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            backgroundColor: Theme.of(context).cardColor,
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Rejeitar",
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text(
                  'Ok',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ).then((result) async {
          if (result == true) {
            await Permission.camera.request();
          }
        });
      });
    } else if (status == PermissionStatus.permanentlyDenied) {
      openAppSettings();
    }
  }
}
