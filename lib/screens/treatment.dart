import 'dart:io';

import 'package:erwinia/widgets/squared_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TreatmentScreen extends StatefulWidget {
  final Map plantData;
  final File imageFile;
  final SharedPreferences preferences;
  const TreatmentScreen({
    super.key,
    required this.plantData,
    required this.imageFile,
    required this.preferences,
  });

  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}

class _TreatmentScreenState extends State<TreatmentScreen> {
  final FlutterTts flutterTts = FlutterTts();
  bool voiceModeActive = false, mode = false;
  String symptoms = "", preventions = "", control = "";

  @override
  void initState() {
    super.initState();
    voiceModeActive = widget.preferences.getBool("voiceActive") ?? true;
    initTts();
    loadData();
    flutterTts.setCompletionHandler(() {
      setState(() {
        voiceModeActive = false;
      });
    });
  }

  Future<void> initTts() async {
    await flutterTts.getLanguages;
    await flutterTts.setLanguage("pt-PT");
  }

  Future<void> changeAndSaveMode() async {
    mode = await widget.preferences
        .setBool("voiceActive", !voiceModeActive)
        .then((value) => !voiceModeActive);
    setState(() {
      voiceModeActive = mode;
    });
  }

  loadData() {
    for (var symptom in widget.plantData["symptoms"]) {
      symptoms += symptom;
    }
    for (var prevention in widget.plantData["prevent"]) {
      preventions += prevention;
    }
    for (var treatment in widget.plantData["control"]) {
      control += treatment;
    }
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    if (voiceModeActive) {
      speak();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes"),
        actions: [
          ElevatedButton.icon(
            onPressed: () async {
              await changeAndSaveMode();
              await speak();
            },
            icon: Icon(
              voiceModeActive
                  ? Icons.volume_off_rounded
                  : Icons.volume_up_rounded,
            ),
            label: Text(voiceModeActive ? "Não Ouvir" : "Ouvir"),
          ),
          const SizedBox(
            width: 4,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.download_rounded),
          ),
          const SizedBox(
            width: 4,
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
                height: 250,
                borderRadius: 12,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.plantData["diagnosed"],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.eco_outlined),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Sintomas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.plantData["symptoms"].length,
                itemBuilder: (context, index) {
                  symptoms += widget.plantData["symptoms"][index];
                  return Text(widget.plantData["symptoms"][index]);
                },
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                children: [
                  Icon(Icons.bug_report_outlined),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Medidas Preventivas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.plantData["prevent"].length,
                itemBuilder: (context, index) {
                  preventions += widget.plantData["prevent"][index];
                  return Text(widget.plantData["prevent"][index]);
                },
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                children: [
                  Icon(Icons.sanitizer_rounded),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Controle",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.plantData["control"].length,
                itemBuilder: (context, index) {
                  control += widget.plantData["control"][index];
                  return Text(widget.plantData["control"][index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> speak() async {
    if (voiceModeActive) {
      debugPrint("Voice mode ON!");
      await flutterTts.speak(
        "Sintomas. $symptoms. Medidas Preventivas. $preventions. Tratamento/Controle. $control",
      );
    } else {
      debugPrint("Voice Mode OFF!");
      await flutterTts.stop();
    }
  }
}
