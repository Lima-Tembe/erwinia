import 'dart:io';

import 'package:erwinia/widgets/squared_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TreatmentScreen extends StatefulWidget {
  final Map plantData;
  final File imageFile;
  const TreatmentScreen({
    super.key,
    required this.plantData,
    required this.imageFile,
  });

  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}

class _TreatmentScreenState extends State<TreatmentScreen> {
  final FlutterTts flutterTts = FlutterTts();
  bool voiceModeActive = false;
  String symptoms = "", preventions = "", control = "";

  @override
  void initState() {
    super.initState();
    initTts();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes"),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                voiceModeActive = !voiceModeActive;
              });
              if (voiceModeActive) {
                debugPrint("Voice mode ON!");
                flutterTts.speak(widget.plantData["diagnosed"] +
                    ". Sintomas. " +
                    symptoms +
                    " Medidas Preventivas. " +
                    preventions +
                    " Controle/Tratamento. " +
                    control);
              } else {
                debugPrint("Voice Mode OFF!");
                flutterTts.stop();
              }
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
            icon: const Icon(Icons.more_vert_rounded),
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
}
