// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
part 'disease_store.g.dart';

class DiseaseStore = _DiseaseStoreBase with _$DiseaseStore;

abstract class _DiseaseStoreBase with Store {
  @observable
  List diseaseData = [
    {
      "name": "Tomato Yellow Leaf Curl Virus",
      "treatment": [
        "Step 1: Remove and destroy infected plants.",
        "Step 2: Use resistant varieties when available.",
        "Step 3: Control whiteflies, which spread the virus, using insecticides or traps."
      ]
    },
    {
      "name": "Tomato mosaic virus",
      "treatment": [
        "Step 1: Remove and destroy infected plants.",
        "Step 2: Control aphids, which spread the virus, using insecticides or traps.",
        "Step 3: Use disease-free seeds and transplants."
      ]
    },
    {
      "name": "Tomato Target Spot",
      "treatment": [
        "Step 1: Remove and destroy infected plant debris.",
        "Step 2: Apply fungicides containing copper or chlorothalonil.",
        "Step 3: Practice crop rotation and avoid overhead irrigation."
      ]
    },
    {
      "name": "Tomato Spider mites",
      "treatment": [
        "Step 1: Use miticides to control spider mites.",
        "Step 2: Maintain proper plant spacing and avoid overcrowding.",
        "Step 3: Keep plants well-watered to reduce stress."
      ]
    },
    {
      "name": "Tomato Septoria leaf spot",
      "treatment": [
        "Step 1: Remove and destroy infected leaves.",
        "Step 2: Apply fungicides containing copper or chlorothalonil.",
        "Step 3: Water plants at the base to avoid wetting foliage."
      ]
    },
    {
      "name": "Tomato Leaf Mold",
      "treatment": [
        "Step 1: Improve air circulation around plants.",
        "Step 2: Apply fungicides containing copper or chlorothalonil.",
        "Step 3: Avoid overhead irrigation and water plants at the base."
      ]
    },
    {
      "name": "Tomato Late blight",
      "treatment": [
        "Step 1: Remove and destroy infected plants and debris.",
        "Step 2: Apply fungicides containing chlorothalonil or mancozeb.",
        "Step 3: Use resistant varieties when available."
      ]
    },
    {
      "name": "Tomato healthy",
      "treatment": [
        "No specific treatment needed for healthy plants. Practice good cultural practices."
      ]
    },
    {
      "name": "Tomato Early blight",
      "treatment": [
        "Step 1: Remove and destroy infected leaves and plant debris.",
        "Step 2: Apply fungicides containing chlorothalonil or copper.",
        "Step 3: Practice crop rotation and avoid overhead irrigation."
      ]
    },
    {
      "name": "Tomato Bacterial spot",
      "treatment": [
        "Step 1: Remove and destroy infected plants and debris.",
        "Step 2: Apply copper-based fungicides.",
        "Step 3: Use disease-free seeds and transplants."
      ]
    },
    {
      "name": "Potato Late blight",
      "treatment": [
        "Step 1: Remove and destroy infected plants and tubers.",
        "Step 2: Apply fungicides containing chlorothalonil or mancozeb.",
        "Step 3: Avoid planting in poorly drained areas and practice crop rotation."
      ]
    },
    {
      "name": "Potato healthy",
      "treatment": [
        "No specific treatment needed for healthy plants. Practice good cultural practices."
      ]
    },
    {
      "name": "Potato Early blight",
      "treatment": [
        "Step 1: Remove and destroy infected leaves and plant debris.",
        "Step 2: Apply fungicides containing chlorothalonil or copper.",
        "Step 3: Practice crop rotation and avoid overhead irrigation."
      ]
    },
    {
      "name": "Pepper bell healthy",
      "treatment": [
        "No specific treatment needed for healthy plants. Practice good cultural practices."
      ]
    },
    {
      "name": "Pepper bell Bacterial spot",
      "treatment": [
        "Step 1: Remove and destroy infected plants and debris.",
        "Step 2: Apply copper-based fungicides.",
        "Step 3: Use disease-free seeds and transplants."
      ]
    }
  ];
}
