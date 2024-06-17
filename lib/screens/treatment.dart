import 'dart:io';
import 'dart:typed_data';

import 'package:erwinia/widgets/squared_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pdf/widgets.dart' as pw;

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
            onPressed: () async {
              await savePDF();
            },
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

  Future<void> requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
    ].request();

    if (statuses[Permission.storage] != PermissionStatus.granted) {
      throw Exception("Permissao nao garantida!");
    }
  }

  Future<void> savePDF() async {
    await requestPermissions();
    if (!widget.imageFile.existsSync()) {
      throw Exception("Image file does not exist!");
    }

    final Uint8List imageBytes = await widget.imageFile.readAsBytes();
    debugPrint('Image bytes length: ${imageBytes.length}');

    if (imageBytes.isEmpty) {
      throw Exception("Failed to read image bytes!");
    }

    final pdf = pw.Document();
    final image = pw.MemoryImage(imageBytes);
    final dateTime = DateTime.now();
    final String formattedDate = DateFormat("dd/MM/yyyy").format(dateTime);

    debugPrint(symptoms);

    pdf.addPage(
      pw.MultiPage(
        build: (context) => [
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      widget.plantData["diagnosed"],
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(formattedDate)
                  ]),
              pw.Divider(),
              pw.Container(
                width: 400,
                height: 350,
                decoration: pw.BoxDecoration(
                  image: pw.DecorationImage(image: image),
                  borderRadius: pw.BorderRadius.circular(12),
                ),
              ),
              pw.SizedBox(height: 8),
              pw.Text(
                "Sintomas",
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 4),
              pw.Text(symptoms),
              pw.SizedBox(height: 8),
              pw.Text(
                "Medidas Preventivas",
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 4),
              pw.Text(preventions),
              pw.SizedBox(height: 8),
              pw.Text(
                "Tratamento/Controle",
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 4),
              pw.Text(control),
            ],
          )
        ],
      ),
    );

    final directory = await getExternalStorageDirectory();
    if (directory == null) {
      throw Exception("Erro ao pegar o directorio para salver o documento!");
    }

    final filePath =
        '${directory.path}/erwinia_${widget.plantData["diagnosed"]}_${dateTime.toIso8601String()}.pdf';
    final file = File(filePath);
    await file.writeAsBytes(await pdf.save());

    debugPrint('PDF saved to: $filePath');

    final result = await OpenFile.open(filePath);
    debugPrint("Open file result: $result");
  }
}
