// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
part 'disease_store.g.dart';

class DiseaseStore = _DiseaseStoreBase with _$DiseaseStore;

abstract class _DiseaseStoreBase with Store {
  @observable
  List diseaseData = [
    {
      "name": "Tomato Yellow Leaf Curl Virus",
      "diagnosed": "Vírus do Enrolamento Amarelo das Folhas do Tomate",
      "infected": true,
      "description":
          "O Vírus do Enrolamento Amarelo das Folhas do Tomate é uma doença que pode causar danos graves às plantas de tomate, incluindo crescimento retardado, enrolamento das folhas e redução na produção. Pode infectar mais de 30 espécies de plantas.",
      "symptoms": [
        "As folhas das plantas infectadas enrolam para cima e para dentro.",
        "O crescimento é retardado quando as plantas são infectadas no início da estação.",
        "Plantas infectadas no início da estação podem produzir muitos ramos com folhas menores, dando uma aparência arbustiva.",
        "Plantas infectadas produzem um número reduzido de flores devido à queda das flores. Portanto, as plantas infectadas produzem poucos frutos.",
        "Quando as infecções ocorrem tarde no estágio de crescimento, os frutos já presentes se desenvolvem normalmente."
      ],
      "control": [
        "Evite plantar tomate continuamente no mesmo pedaço de terra para reduzir os níveis populacionais de moscas-brancas que transmitem o vírus.",
        "Pratique a rotação de culturas com milho para reduzir a população de moscas-brancas.",
        "Proteja os canteiros de sementeiras com uma rede de nylon branca com tamanho de malha 40. Isso previne a infecção precoce das mudas.",
        "Plante uma cultura de barreira de milho (algumas fileiras de plantas de milho) ao redor de seus campos de tomate para impedir que as moscas-brancas alcancem as mudas de tomate.",
        "Pratique uma boa higiene agrícola através do controle eficaz de ervas daninhas.",
        "Evite plantar algodão ou outras culturas suscetíveis a moscas-brancas perto de campos de tomate.",
        "Monitorar regularmente o campo (pelo menos em intervalos semanais) em busca dos sintomas descritos acima e implementar as ações recomendadas.",
        "Arranque ou remova as plantas com infecções precoces e enterre-as ou queime-as. Isso reduz a disponibilidade de inóculo viral para as moscas-brancas.",
        "Borrife Imidacloprida (3%) (inseticida) em intervalos de 7 dias para controlar moscas-brancas. Restrições: Classe III da OMS (ligeiramente perigoso). REI: 12 horas; PHI: 14 dias."
      ]
    },
    {
      "name": "Tomato mosaic virus",
      "diagnosed": "Vírus do Mosaico do Tomate",
      "infected": true,
      "description":
          "O vírus do mosaico do tomateiro (ToMV) é um vírus grave que afecta o tomate e a pimenta em todos os continentes. Causa mosaicos de cores claras e escuras nas folhas, diminuição do rendimento e outros sintomas. O ToMV pode causar infecção latente, sem sintomas, mas estirpes graves podem causar um mosaico suave alternado com embolhamento foliar.",
      "symptoms": [
        "As folhas das plantas afetadas mostram um mosaico com manchas amareladas alternadas com áreas verdes escuras. As áreas mais escuras aparecem mais espessas com uma aparência semelhante a bolhas.",
        "As folhas parecem semelhantes a samambaias com pontas pontiagudas.",
        "As folhas mais jovens das plantas afectadas podem estar torcidas e enroladas.",
        "Os frutos podem ter uma forma distorcida.",
        "Manchas amarelas e pontos necróticos podem se formar em frutos verdes e maduros.",
        "A parte interna sob a parede do fruto pode apresentar coloração marrom (tanto frutos verdes quanto maduros podem mostrar essa coloração marrom).",
        "O crescimento retardado é comum.",
        "As flores podem estar descoloridas.",
      ],
      "prevent": [
        "As sementes salvas pelo agricultor podem ser tratadas mergulhando as sementes em uma solução de 10% de fosfato trissódico (Na3PO4) por pelo menos 15 minutos para desinfetar as sementes antes do plantio.",
        "Lave as mãos com sabão e desinfete as ferramentas a serem usadas no transplante em uma solução de água sanitária (10%) antes de transplantar as mudas ou manusear as plantas de tomate.",
        "Os resíduos antigos das plantas, como folhas e raízes, devem ser destruídos durante a preparação do solo queimando-os antes de transplantar as mudas.",
        "Produtos de tabaco não devem ser colocados próximos às plantas de tomate. Além disso, lave as mãos com água e sabão após usar produtos de tabaco antes e depois do trabalho na fazenda.",
        "Estacas devem ser desinfetadas adequadamente antes de serem reutilizadas temporada após temporada, pois potencialmente podem carregar vírus para iniciar novas infecções.",
      ],
      "monitor": [
        "Monitore as plantas quanto aos sintomas da doença, incluindo aqueles descritos acima, e implemente ações de controle direto recomendadas quando os sintomas forem encontrados em mais de uma planta.",
        "As folhas das plantas afetadas mostram um mosaico com manchas amareladas alternadas com áreas verdes escuras. As áreas mais escuras aparecem mais espessas com uma aparência semelhante a bolhas.",
        "As folhas parecem semelhantes a samambaias com pontas pontiagudas.",
        "As folhas mais jovens das plantas afetadas podem estar torcidas e enroladas.",
        "Os frutos podem ter uma forma distorcida.",
        "Manchas amarelas e pontos necróticos podem se formar em frutos verdes e maduros.",
        "A parte interna sob a parede do fruto pode apresentar coloração marrom (tanto frutos verdes quanto maduros podem mostrar essa coloração marrom).",
        "O crescimento retardado é comum.",
      ],
      "control": [
        "Remova as plantas infectadas precocemente que mostram sintomas e destrua-as queimando-as.",
      ]
    },
    {
      "name": "Target Spot do Tomate",
      "diagnosed": "Mancha Alvo do Tomate",
      "infected": true,
      "description":
          "A mancha alvo do tomateiro é uma doença fúngica comum que afeta as plantas de tomate em diversas regiões. Ela causa manchas circulares escuras nas folhas, que podem se expandir e se fundir, resultando na queda prematura das folhas. Embora a doença não seja fatal, pode reduzir significativamente a produção e a qualidade dos frutos.",
      "symptoms": [
        "Manchas circulares escuras aparecem nas folhas de tomate.",
        "As manchas podem se expandir e se fundir, formando áreas maiores de descoloração.",
        "As folhas afetadas podem amarelar e murchar antes de cair prematuramente da planta.",
        "Em casos graves, as manchas também podem aparecer nos frutos, causando deformação e apodrecimento.",
        "Em condições favoráveis, como alta umidade e temperaturas moderadas, a doença pode se espalhar rapidamente pela plantação."
      ],
      "prevent": [
        "Praticar rotação de culturas para reduzir a presença do fungo no solo.",
        "Evitar o excesso de molhamento das folhas ao regar as plantas e usar sistemas de irrigação que evitem molhar as folhas.",
        "Remover e destruir regularmente as folhas infectadas ou caídas para reduzir a fonte de inóculo.",
        "Manter uma boa circulação de ar ao redor das plantas para reduzir a umidade e minimizar as condições favoráveis ao desenvolvimento do fungo.",
        "Utilizar mulching para evitar respingos de água do solo para as folhas."
      ],
      "monitor": [
        "Fazer inspeções regulares das folhas de tomate em busca de manchas circulares escuras.",
        "Observar qualquer mudança na coloração ou na aparência das folhas.",
        "Monitorar as condições climáticas, especialmente a umidade e a temperatura, que podem favorecer o desenvolvimento da doença."
      ],
      "control": [
        "Remover e destruir as folhas e frutos infectados assim que forem observados os primeiros sintomas.",
        "Aplicar fungicidas preventivos conforme recomendado para reduzir a disseminação da doença."
      ]
    },
    {
      "name": "Tomato Spider mites",
      "diagnosed": "Ácaros do Tomate",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Use miticides to control spider mites.",
        "Step 2: Maintain proper plant spacing and avoid overcrowding.",
        "Step 3: Keep plants well-watered to reduce stress."
      ]
    },
    {
      "name": "Tomato Septoria leaf spot",
      "diagnosed": "Mancha Foliar Septoria do Tomate",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Remove and destroy infected leaves.",
        "Step 2: Apply fungicides containing copper or chlorothalonil.",
        "Step 3: Water plants at the base to avoid wetting foliage."
      ]
    },
    {
      "name": "Tomato Leaf Mold",
      "diagnosed": "Mofo das Folhas do Tomate",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Improve air circulation around plants.",
        "Step 2: Apply fungicides containing copper or chlorothalonil.",
        "Step 3: Avoid overhead irrigation and water plants at the base."
      ]
    },
    {
      "name": "Tomato Late blight",
      "diagnosed": "Míldio Tardio do Tomate",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Remove and destroy infected plants and debris.",
        "Step 2: Apply fungicides containing chlorothalonil or mancozeb.",
        "Step 3: Use resistant varieties when available."
      ]
    },
    {
      "name": "Tomato healthy",
      "diagnosed": "Tomate saudável",
      "infected": false,
      "description": "Lorem ipsum dolor",
      "control": [
        "No specific control needed for healthy plants. Practice good cultural practices."
      ]
    },
    {
      "name": "Tomato Early blight",
      "diagnosed": "Míldio Precoce do Tomate",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Remove and destroy infected leaves and plant debris.",
        "Step 2: Apply fungicides containing chlorothalonil or copper.",
        "Step 3: Practice crop rotation and avoid overhead irrigation."
      ]
    },
    {
      "name": "Tomato Bacterial spot",
      "diagnosed": "Mancha Bacteriana do Tomate",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Remove and destroy infected plants and debris.",
        "Step 2: Apply copper-based fungicides.",
        "Step 3: Use disease-free seeds and transplants."
      ]
    },
    {
      "name": "Potato Late blight",
      "diagnosed": "Míldio Tardio da Batata",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Remove and destroy infected plants and tubers.",
        "Step 2: Apply fungicides containing chlorothalonil or mancozeb.",
        "Step 3: Avoid planting in poorly drained areas and practice crop rotation."
      ]
    },
    {
      "name": "Potato healthy",
      "diagnosed": "Batata saudável",
      "infected": false,
      "description": "Lorem ipsum dolor",
      "control": [
        "No specific control needed for healthy plants. Practice good cultural practices."
      ]
    },
    {
      "name": "Potato Early blight",
      "diagnosed": "Míldio Precoce da Batata",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Remove and destroy infected leaves and plant debris.",
        "Step 2: Apply fungicides containing chlorothalonil or copper.",
        "Step 3: Practice crop rotation and avoid overhead irrigation."
      ]
    },
    {
      "name": "Pepper bell healthy",
      "diagnosed": "Pimento saudável",
      "infected": false,
      "description": "Lorem ipsum dolor",
      "control": [
        "No specific control needed for healthy plants. Practice good cultural practices."
      ]
    },
    {
      "name": "Pepper bell Bacterial spot",
      "diagnosed": "Mancha Bacteriana do Pimento",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "control": [
        "Step 1: Remove and destroy infected plants and debris.",
        "Step 2: Apply copper-based fungicides.",
        "Step 3: Use disease-free seeds and transplants."
      ]
    }
  ];
}
