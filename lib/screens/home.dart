import 'dart:io';

import 'package:camera/camera.dart';
import 'package:erwinia/screens/situation.dart';
import 'package:erwinia/store/camera_store.dart';
import 'package:erwinia/store/disease_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image/image.dart' as img;

import '../classifier/classifier.dart';

class HomePage extends StatefulWidget {
  final CameraStore cameraStore;
  final DiseaseStore diseaseStore;
  const HomePage({
    super.key,
    required this.cameraStore,
    required this.diseaseStore,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

enum _ResultStatus {
  notFound,
  found,
}

class _HomePageState extends State<HomePage> {
  FlashMode currentFlashMode = FlashMode.auto;
  String accuracyLabel = "", plantLabel = "";
  double accuracyScore = 0.0;
  File? imageFile;

  final Map<String, FlashMode> flashModes = {
    "always": FlashMode.always,
    "auto": FlashMode.auto,
    "off": FlashMode.off,
    "torch": FlashMode.torch,
  };

  final _labelsFileName = "assets/labels.txt";

  final _modelFileName = "model_unquant.tflite";

  Classifier? _classifier;

  @override
  void initState() {
    super.initState();
    cameraPermission(context);
    _loadClassifier();
  }

  Future _loadClassifier() async {
    debugPrint(
      'Start loading of Classifier with '
      'labels at $_labelsFileName, '
      'model at $_modelFileName',
    );

    // #2
    final classifier = await Classifier.loadWith(
      labelsFileName: _labelsFileName,
      modelFileName: _modelFileName,
    );

    // #3
    _classifier = classifier;
  }

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
        actions: [
          Observer(builder: (_) {
            return Visibility(
              visible: widget.cameraStore.canAccessCamera,
              child: IconButton(
                onPressed: () {
                  _toggleFlashMode();
                },
                icon: Icon(
                  _getFlashIcon(),
                  color: currentFlashMode == FlashMode.torch
                      ? Colors.amber
                      : Colors.grey,
                ),
              ),
            );
          }),
        ],
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.black,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Observer(builder: (_) {
          return SizedBox.expand(
            child: widget.cameraStore.canAccessCamera
                ? CameraPreview(widget.cameraStore.cameraController!)
                : Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        await cameraPermission(context);
                      },
                      child: const Text(
                        "Dar acesso a camera",
                      ),
                    ),
                  ),
          );
        }),
      ),
      floatingActionButton: Observer(builder: (_) {
        return Visibility(
          visible: widget.cameraStore.canAccessCamera,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 104),
            child: SizedBox(
              width: 80,
              height: 80,
              child: Observer(builder: (_) {
                return FloatingActionButton(
                  onPressed: widget.cameraStore.fabEnabled
                      ? () async {
                          widget.cameraStore.setFabButton(false);
                          await _takePicture();
                          WidgetsBinding.instance
                              .addPostFrameCallback((timeStamp) {
                            Navigator.of(context).push(
                              CupertinoPageRoute(
                                builder: (context) => SituationScreen(
                                  imageFile: imageFile!,
                                  plantLabel: plantLabel,
                                  accuracyScore: accuracyScore,
                                  diseaseStore: widget.diseaseStore,
                                ),
                              ),
                            );
                          });
                          widget.cameraStore.setFabButton(true);
                        }
                      : null,
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.9),
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
                );
              }),
            ),
          ),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onFlashModeSelected(FlashMode selectedFlashMode) {
    setState(() {
      if (mounted) {
        currentFlashMode = selectedFlashMode;
        widget.cameraStore.cameraController?.setFlashMode(currentFlashMode);
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
      widget.cameraStore.cameraController =
          CameraController(cameras[0], ResolutionPreset.high);
      widget.cameraStore.cameraController?.initialize().then((value) => {
            widget.cameraStore.cameraController
                ?.setFlashMode(currentFlashMode)
                .then((value) {
              widget.cameraStore.setAccessCamera(true);
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

  Future<void> _takePicture() async {
    // Check if camera controller is initialized
    if (!widget.cameraStore.cameraController!.value.isInitialized) {
      return;
    }

    // Capture the image
    final image = await widget.cameraStore.cameraController!.takePicture();

    // Get the temporary directory path
    final tempDir = await getTemporaryDirectory();

    // Generate a unique file name
    String fileName =
        "${DateTime.now()}.jpg"; // Replace with preferred extension if needed
    // Create the image file
    imageFile = File("${tempDir.path}/$fileName");

    // Save the image to the file
    await image.saveTo(imageFile!.path);
    debugPrint("Image Saved to: $imageFile");
    debugPrint("SENDING IMAGE TO MODEL DETECTION...");
    _analyzeImage(imageFile!);
  }

  void _analyzeImage(File imageCaptured) {
    // #1
    final image = img.decodeImage(imageCaptured.readAsBytesSync())!;

    // #2
    final resultCategory = _classifier!.predict(image);

    // #3
    final result = resultCategory.score >= 0.8
        ? _ResultStatus.found
        : _ResultStatus.notFound;
    plantLabel = resultCategory.label;
    accuracyScore = resultCategory.score;
    if (result == _ResultStatus.found) {
      accuracyLabel = 'Accuracy: ${(accuracyScore * 100).toStringAsFixed(2)}%';
    }
  }
}
