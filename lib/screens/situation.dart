import 'dart:io';

import 'package:erwinia/screens/treatment.dart';
import 'package:erwinia/store/disease_store.dart';
import 'package:erwinia/widgets/squared_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SituationScreen extends StatefulWidget {
  final File imageFile;
  final String plantLabel;
  final double accuracyScore;
  final DiseaseStore diseaseStore;
  final SharedPreferences preferences;
  const SituationScreen({
    super.key,
    required this.imageFile,
    required this.plantLabel,
    required this.accuracyScore,
    required this.diseaseStore,
    required this.preferences,
  });

  @override
  State<SituationScreen> createState() => _SituationScreenState();
}

class _SituationScreenState extends State<SituationScreen> {
  final FlutterTts flutterTts = FlutterTts();
  bool mode = false;
  late bool voiceModeActive;
  late Map plantData;

  @override
  void initState() {
    super.initState();
    voiceModeActive = widget.preferences.getBool("voiceActive") ?? true;
    initTts();
    flutterTts.setCompletionHandler(() async {
      setState(() {
        voiceModeActive = false;
      });
    });
    _initializePlantData();
  }

  Future<void> initTts() async {
    await flutterTts.getLanguages;
    await flutterTts.setLanguage("pt-PT");
  }

  Future<void> _initializePlantData() async {
    debugPrint("Length of Diseases: ${widget.diseaseStore.diseaseData.length}");
    plantData = widget.diseaseStore.diseaseData.firstWhere(
      (disease) => disease["name"] == widget.plantLabel,
    );
  }

  Future<void> changeAndSaveMode() async {
    mode = await widget.preferences
        .setBool("voiceActive", !voiceModeActive)
        .then((value) => !voiceModeActive);
    setState(() {
      voiceModeActive = mode;
    });
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    final String infectedText =
        "A probabilidade da planta estar doente é de ${(widget.accuracyScore * 100).toStringAsFixed(2)}%. A planta pode estar infectada com uma doença chamada ${plantData["diagnosed"]}!";
    final String healthyText =
        "A probabilidade da planta estar saudável é de ${(widget.accuracyScore * 100).toStringAsFixed(2)}%";
    if (voiceModeActive) {
      speak(plantData, infectedText, healthyText, widget.preferences);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultado"),
        actions: [
          ElevatedButton.icon(
            onPressed: () async {
              await changeAndSaveMode();
              await speak(
                  plantData, infectedText, healthyText, widget.preferences);
            },
            icon: Icon(
              voiceModeActive
                  ? Icons.volume_off_rounded
                  : Icons.volume_up_rounded,
            ),
            label: Text(
              voiceModeActive ? "Não Ouvir" : "Ouvir",
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundedImageFromFile(
                imageFile: widget.imageFile,
                width: MediaQuery.of(context).size.width,
                height: 450,
                borderRadius: 12,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                plantData["diagnosed"],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Visibility(
                visible: plantData["infected"],
                child: Text(infectedText),
              ),
              Visibility(
                visible: !plantData["infected"],
                child: Text(healthyText),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(plantData["description"]),
              const SizedBox(
                height: 8,
              ),
              Visibility(
                visible: plantData["infected"],
                child: const Text(
                    "Clique no botão abaixo para ver mais detalhes da doença e saber o processo de tratamento da doença!"),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: plantData["infected"],
        child: FloatingActionButton.extended(
          onPressed: () {
            flutterTts.stop();
            Navigator.of(context).push(
              CupertinoPageRoute(
                  builder: ((context) => TreatmentScreen(
                        plantData: plantData,
                        imageFile: widget.imageFile,
                        preferences: widget.preferences,
                      ))),
            );
          },
          label: const Text("Ver Detalhes"),
          icon: const Icon(Icons.tips_and_updates_outlined),
        ),
      ),
    );
  }

  Future<void> speak(
    Map<dynamic, dynamic> plantData,
    String infectedText,
    String healthyText,
    SharedPreferences preferences,
  ) async {
    if (voiceModeActive) {
      debugPrint("Voice mode ON!");
      if (plantData["infected"]) {
        await flutterTts.speak(infectedText + plantData["description"]);
      } else {
        await flutterTts.speak(healthyText);
      }
    } else {
      debugPrint("Voice Mode OFF!");
      await flutterTts.stop();
    }
  }
}
