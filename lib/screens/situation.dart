import 'dart:io';

import 'package:erwinia/widgets/squared_image.dart';
import 'package:flutter/material.dart';

class SituationScreen extends StatefulWidget {
  final File imageFile;
  final String plantLabel;
  final double accuracyScore;
  const SituationScreen({
    super.key,
    required this.imageFile,
    required this.plantLabel,
    required this.accuracyScore,
  });

  @override
  State<SituationScreen> createState() => _SituationScreenState();
}

class _SituationScreenState extends State<SituationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultado"),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.volume_up_rounded),
            label: const Text("Modo Voz"),
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
                widget.plantLabel,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                  "A probabilidade da planta estar doente é de ${(widget.accuracyScore * 100).toStringAsFixed(2)}%. A planta pode estar infectada com uma doença chamada ${widget.plantLabel}!"),
              const SizedBox(
                height: 8,
              ),
              const Text(
                  "Clique no botão abaixo para ver mais detalhes da doença e saber o processo de tratamento da doença!"),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Ver Tratamento"),
        icon: const Icon(Icons.tips_and_updates_outlined),
      ),
    );
  }
}
