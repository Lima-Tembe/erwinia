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
      "symptoms": [
        "Normalmente aparecem teias finas na parte inferior das folhas. As folhas podem ficar amarelas ou bronzeadas e desenvolver pontos (pequenos pontos amarelos ou brancos). Em casos graves, as folhas podem cair prematuramente."
      ],
      "prevent": [
        "Proporcione circulação de ar adequada espaçando as plantas corretamente e evitando a rega por cima."
      ],
      "control": [
        "Remova todas as folhas infectadas, especialmente as piores.",
        "Borrife a planta com um sabão inseticida orgânico para matar quaisquer ácaros vermelhos vivos. Pode usar um spray caseiro: Misture 350ml de água, 120ml de álcool isopropílico a 92% e 2 colheres de sopa de detergente em um frasco de spray de água de 500ml."
      ],
    },
    {
      "name": "Tomato Septoria leaf spot",
      "diagnosed": "Mancha Foliar Septoria do Tomate",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "symptoms": [
        "Uma doença fúngica que causa pequenas manchas circulares, encharcadas de água, na parte inferior das folhas mais velhas. As manchas se tornam cinzas a castanhas com margens marrom-escuras e frequentemente são cercadas por um halo amarelo."
      ],
      "prevent": [
        "Trate a doença assim que ela aparecer, remova os detritos das plantas caídas e limpe suas mãos e ferramentas. Você também pode fornecer espaço entre as plantas para circulação de ar, usar cobertura morta para evitar que esporos alcancem as folhas inferiores e evitar regar em excesso."
      ],
      "control": [
        "Remova imediatamente as folhas infectadas e considere o uso de fungicidas orgânicos ou químicos."
        "Alguns fungicidas que podem ajudar a controlar doenças de manchas nas folhas incluem produtos contendo iprodiona, clorotalonil, mancozebe, fludioxonil, azoxistrobina ou pentiopirade. Fungicidas orgânicos contendo bicarbonato de potássio ou cobre podem ser eficazes se a doença não estiver muito avançada."
        "Também pode aplicar fungicidas à base de cobre ou sprays de enxofre para prevenir e controlar a doença."
      ],
    },
    {
      "name": "Tomato Leaf Mold",
      "diagnosed": "Mofo das Folhas do Tomate",
      "infected": true,
      "description": "O mofo foliar do tomate é uma doença fúngica que pode se espalhar rapidamente em condições quentes e úmidas.",
      "symptoms": [
        "Manchas esverdeadas-amareladas pálidas, geralmente com menos de 0.64cm, sem margens definidas, formam-se na parte superior das folhas. Um mofo aveludado verde-oliva a marrom se forma na superfície inferior da folha abaixo das manchas. As manchas nas folhas se juntam e tornam-se marrons. As folhas murcham e morrem, mas muitas vezes permanecem presas à planta."
      ],
      "prevent": [
        "Espaçe as plantas para permitir uma boa movimentação de ar entre as fileiras e as plantas individuais. Também pode podar as plantas para aumentar o fluxo de ar.",
        "Mantenha a humidade relativa abaixo de 85%. Em estufas, pode usar ventiladores e aberturas para circular o ar e levantar os lados de túneis altos para reduzir a umidade.",
        "Use irrigação por gota a gota para minimizar a humidade das folhas. Se regar por cima, faça isso de manhã para que as folhas possam secar rapidamente.",
        "Limpe e higienize as superfícies da estufa com vapor, lixivia ou soluções desinfetantes."
      ],
    },
    {
      "name": "Tomato Late blight",
      "diagnosed": "Míldio Tardio do Tomate",
      "infected": true,
      "description": "Também conhecido como late blight, é uma doença fúngica que se espalha rapidamente pelo follaje e fruto dos tomates em climas quentes e húmidos, causando colapso e decomposição. É uma doença muito grave para tomates ao ar livre, mas os tomates cultivados em estufas também podem ser gravemente afetados.",
      "symptoms": [
        "Manchas aquosas verde-negras nas superfícies superiores das folhas mais velhas. Estas manchas aumentam rapidamente e, em climas húmidos, pode desenvolver-se um crescimento felpudo na parte inferior da folha. No fruto, aparecem manchas ásperas, firmes e de cor escura",
      ],
      "prevent": [
        "Leia cuidadosamente os pacotes de sementes ou rótulos das plantas para selecionar uma variedade de tomate que seja resistente ao míldio.",
        "Dê às plantas espaço suficiente para permitir a circulação de ar e reduzir a humidade.",
        "Use irrigação por gota a gota para regar o solo ao redor da base das plantas e manter as folhas secas. Regue de manhã para que as folhas possam secar rapidamente ao sol.",
        "Remova quaisquer folhas afectadas, queime ou descarte-as.",
        "Pulverizar as plantas com uma solução de uma colher de sopa de bicarbonato de sódio, uma colher de chá de óleo vegetal e uma pequena quantidade de sabão suave em um garrafa de água(4L)."
      ],
    },
    {
      "name": "Tomato healthy",
      "diagnosed": "Tomate saudável",
      "infected": false,
      "description": "Lorem ipsum dolor",
    },
    {
      "name": "Tomato Early blight",
      "diagnosed": "Míldio Precoce do Tomate",
      "infected": true,
      "description": "O míldio precoce é uma doença fúngica que pode afetar as plantas de tomate, causada pelo fungo Alternaria solani. Pode ocorrer a qualquer momento durante a temporada de crescimento, mas se espalha rapidamente em alta umidade e temperaturas acima de 24°C.",
      "symptoms": [
        "Podridão aquosa das folhas que logo se desmoronam, enrugam e ficam marrons",
        "Lesões nas hastes das folhas e caules",
        "Crescimento branco às vezes visível em condições húmidas ou muito húmidas",
        "Amarelamento da área foliar circundante",
        "Morte prematura das folhas afectadas",
        "Racha nos frutos no local do caule"
      ],
      "prevent": [
        "O míldio precoce pode ser prevenido mantendo as plantas secas, amarrando as plantas e removendo as plantas infectadas."
      ],
      "control": [
        "Remova folhas e partes da planta infectadas durante a temporada de crescimento e no final da temporada. Você pode queimá-las ou enterrá-las.",
        "Aplique um fungicida sintético ou orgânico no início da temporada, quando os sintomas aparecerem.",
        "Regue as plantas na base, evitando molhar as folhas. Pode usar irrigação por gota a gota para manter as folhas secas.",
        "Assim que as plantas estiverem estabelecidas, podar os ramos inferiores de 3-4 folhas.",
        "Mantenha as plantas bem cobertas de cobertura morta para reduzir o respingo de solo.",
        "Compre sementes e mudas de fontes confiáveis e use tubérculos de sementes sem doenças para o plantio.",
        "Remova as ervas daninhas voluntárias.",
        "Pulverizar uma solução de bicarbonato de sódio nas plantas pode prevenir o míldio e afastar as pragas."
      ],
    },
    {
      "name": "Tomato Bacterial spot",
      "diagnosed": "Mancha Bacteriana do Tomate",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "symptoms": [],
      "prevent": [],
      "monitor": [],
      "control": [],
    },
    {
      "name": "Potato Late blight",
      "diagnosed": "Míldio Tardio da Batata",
      "infected": true,
      "description": "Lorem ipsum dolor",
      "symptoms": [],
      "prevent": [],
      "monitor": [],
      "control": [],
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
      "symptoms": [],
      "prevent": [],
      "monitor": [],
      "control": [],
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
      "symptoms": [],
      "prevent": [],
      "monitor": [],
      "control": [],
    }
  ];
}
