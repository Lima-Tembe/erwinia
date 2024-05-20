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
        "Para reduzir os níveis populacionais de moscas-brancas, que transmitem o vírus, evite plantar tomate continuamente no mesmo pedaço de terra e pratique a rotação de culturas com milho. Proteja os canteiros de sementeiras com uma rede de nylon branca de malha 40 para prevenir a infecção precoce das mudas, e plante uma cultura de barreira de milho ao redor dos campos de tomate para impedir o acesso das moscas-brancas às mudas. Além disso, mantenha uma boa higiene agrícola controlando eficazmente as ervas daninhas e evite plantar culturas suscetíveis a moscas-brancas próximas aos campos de tomate. Monitore regularmente os campos em busca de sintomas e implemente as ações recomendadas, incluindo arrancar ou remover plantas infectadas precocemente e aplicar Imidacloprida (3%) em intervalos de 7 dias como inseticida para controlar as moscas-brancas, seguindo as restrições de segurança."
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
        "Remover e destruir as folhas e frutos infectados assim que forem observados os primeiros sintomas. Aplicar fungicidas preventivos conforme recomendado para reduzir a disseminação da doença."
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
        "Remova todas as folhas infectadas, especialmente as piores. Borrife a planta com um sabão inseticida orgânico para matar quaisquer ácaros vermelhos vivos. Pode usar um spray caseiro: Misture 350ml de água, 120ml de álcool isopropílico a 92% e 2 colheres de sopa de detergente em um frasco de spray de água de 500ml."
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
        "Para controlar a Mancha Foliar Septoria do Tomate, é fundamental remover e descartar todas as folhas infectadas assim que forem identificadas. Isso ajuda a reduzir a fonte de infecção e a interromper a disseminação da doença. Além disso, a aplicação de fungicidas apropriados conforme as recomendações pode ajudar a controlar a infecção e proteger as plantas saudáveis."
      ]
    },
    {
      "name": "Tomato Leaf Mold",
      "diagnosed": "Mofo das Folhas do Tomate",
      "infected": true,
      "description":
          "O mofo foliar do tomate é uma doença fúngica que pode se espalhar rapidamente em condições quentes e úmidas.",
      "symptoms": [
        "Manchas esverdeadas-amareladas pálidas, geralmente com menos de 0.64cm, sem margens definidas, formam-se na parte superior das folhas. Um mofo aveludado verde-oliva a marrom se forma na superfície inferior da folha abaixo das manchas. As manchas nas folhas se juntam e tornam-se marrons. As folhas murcham e morrem, mas muitas vezes permanecem presas à planta."
      ],
      "prevent": [
        "Espaçe as plantas para permitir uma boa movimentação de ar entre as fileiras e as plantas individuais. Também pode podar as plantas para aumentar o fluxo de ar.",
        "Mantenha a humidade relativa abaixo de 85%. Em estufas, pode usar ventiladores e aberturas para circular o ar e levantar os lados de túneis altos para reduzir a umidade.",
        "Use irrigação por gota a gota para minimizar a humidade das folhas. Se regar por cima, faça isso de manhã para que as folhas possam secar rapidamente.",
        "Limpe e higienize as superfícies da estufa com vapor, lixivia ou soluções desinfetantes."
      ],
      "control": [
        "No caso de infecção por mofo das folhas do tomate, é fundamental remover e destruir todas as folhas e partes da planta infectadas. Isso pode ajudar a interromper a propagação da doença. Além disso, aplicar fungicidas apropriados conforme as recomendações pode ajudar no controle da infecção."
      ]
    },
    {
      "name": "Tomato Late blight",
      "diagnosed": "Míldio Tardio do Tomate",
      "infected": true,
      "description":
          "Também conhecido como late blight, é uma doença fúngica que se espalha rapidamente pelo follaje e fruto dos tomates em climas quentes e húmidos, causando colapso e decomposição. É uma doença muito grave para tomates ao ar livre, mas os tomates cultivados em estufas também podem ser gravemente afetados.",
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
      "control": [
        "No caso de infecção por míldio tardio do tomate, é crucial remover e descartar todas as plantas infectadas imediatamente para evitar a propagação da doença. Além disso, a aplicação de fungicidas adequados pode ajudar a controlar a disseminação do míldio e a proteger as plantas restantes."
      ]
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
      "description":
          "O míldio precoce é uma doença fúngica que pode afetar as plantas de tomate, causada pelo fungo Alternaria solani. Pode ocorrer a qualquer momento durante a temporada de crescimento, mas se espalha rapidamente em alta umidade e temperaturas acima de 24°C.",
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
        "Durante a temporada de crescimento e no final, é recomendado remover as folhas e partes da planta infectadas, podendo ser queimadas ou enterradas. No início da temporada, ao detectar os sintomas, é aconselhável aplicar um fungicida sintético ou orgânico. Ao regar as plantas, evite molhar as folhas, optando pela irrigação na base ou até mesmo por sistemas de gotejamento para manter as folhas secas. Após o estabelecimento das plantas, é benéfico podar os ramos inferiores, deixando cerca de 3 a 4 folhas. Mantenha as plantas cobertas com cobertura morta para reduzir o respingo de solo. Ao adquirir sementes e mudas, escolha fontes confiáveis e utilize tubérculos de sementes livres de doenças. Além disso, é importante remover as ervas daninhas voluntárias. Como medida preventiva contra o míldio e pragas, uma opção é pulverizar uma solução de bicarbonato de sódio nas plantas."
      ],
    },
    {
      "name": "Tomato Bacterial spot",
      "diagnosed": "Mancha Bacteriana do Tomate",
      "infected": true,
      "description":
          "A mancha bacteriana pode afetar todas as partes acima do solo de uma planta de tomate, incluindo as folhas, caules e frutos.",
      "symptoms": [
        "A mancha bacteriana aparece nas folhas como áreas circulares pequenas (menos de 0,3 centímetros), às vezes encharcadas de água (ou seja, com aparência molhada). As manchas podem inicialmente ser amarelo-esverdeadas, mas escurecem para tons de marrom-avermelhado à medida que envelhecem."
      ],
      "prevent": [
        "A prevenção da mancha bacteriana do tomate inclui práticas culturais e medidas de controle de doenças. É essencial usar sementes e plantas de tomate certificadas e saudáveis, rotação de culturas e evitar molhar as folhas durante a irrigação."
      ],
      "control": [
        "Para controlar a mancha bacteriana do tomate, é recomendado o uso de fungicidas cúpricos e bactericidas. Além disso, a eliminação de plantas infectadas e o uso de rotação de culturas ajudam a reduzir a propagação da doença."
      ]
    },
    {
      "name": "Potato Late blight",
      "diagnosed": "Míldio Tardio da Batata",
      "infected": true,
      "description":
          "O míldio tardio da batata é uma doença causada pelo fungo Phytophthora infestans, que pode resultar em sérios danos nas plantações de batata.",
      "symptoms": [
        "Os sintomas do míldio tardio da batata incluem manchas irregulares nas folhas, que começam como áreas verde-escuras e rapidamente se tornam marrons. Essas manchas podem se expandir rapidamente e causar a morte das folhas."
      ],
      "prevent": [
        "Para prevenir o míldio tardio da batata, é essencial praticar a rotação de culturas, evitar o plantio excessivamente denso e garantir uma boa drenagem do solo. O uso de variedades resistentes também pode ajudar a reduzir o risco de infecção."
      ],
      "control": [
        "O controle do míldio tardio da batata envolve o uso de fungicidas específicos para Phytophthora infestans. Além disso, é importante eliminar e destruir as plantas infectadas para evitar a propagação da doença."
      ]
    },
    {
      "name": "Potato healthy",
      "diagnosed": "Batata saudável",
      "infected": false,
      "description":
          "As batatas saudáveis são aquelas que não apresentam sintomas de doenças ou infecções.",
    },
    {
      "name": "Potato Early blight",
      "diagnosed": "Míldio Precoce da Batata",
      "infected": true,
      "description":
          "O míldio precoce da batata é uma doença causada pelo fungo Alternaria solani, que afeta principalmente as folhas e os caules da planta.",
      "symptoms": [
        "Os sintomas do míldio precoce da batata incluem o aparecimento de manchas escuras e concentricas nas folhas, que podem se expandir rapidamente à medida que a doença progride."
      ],
      "prevent": [
        "A prevenção do míldio precoce da batata envolve o uso de práticas culturais, como rotação de culturas, plantio em locais bem drenados e espaçamento adequado entre as plantas para promover uma boa circulação de ar. Além disso, a remoção e destruição de restos de plantas infectadas após a colheita pode ajudar a reduzir a incidência da doença na próxima estação."
      ],
      "control": [
        "O controle do míldio precoce da batata pode ser realizado através do uso de fungicidas específicos para Alternaria solani. É importante aplicar os fungicidas conforme as recomendações do fabricante e monitorar regularmente as plantas para detectar sinais precoces de infecção."
      ]
    },
    {
      "name": "Pepper bell Bacterial spot",
      "diagnosed": "Mancha Bacteriana do Pimento",
      "infected": true,
      "description":
          "A mancha bacteriana do pimentão é uma doença causada pela bactéria Xanthomonas campestris pv. vesicatoria, que afeta as folhas, os frutos e os caules da planta.",
      "symptoms": [
        "Os sintomas da mancha bacteriana do pimentão incluem o aparecimento de lesões necróticas nas folhas, que podem apresentar um halo amarelado ao redor. Essas lesões podem se expandir e coalescer, resultando na queda prematura das folhas."
      ],
      "prevent": [
        "Para prevenir a mancha bacteriana do pimentão, é importante implementar medidas de controle cultural, como rotação de culturas, plantio em locais bem drenados e irrigação por gotejamento para evitar molhar as folhas. Além disso, a utilização de sementes e mudas certificadas livres de patógenos pode ajudar a reduzir o risco de infecção."
      ],
      "control": [
        "O controle da mancha bacteriana do pimentão envolve o uso de bactericidas. Além disso, a eliminação de plantas infectadas e a desinfecção de ferramentas de jardinagem podem ajudar a reduzir a disseminação da doença."
      ]
    },
    {
      "name": "Pepper bell healthy",
      "diagnosed": "Pimento Saudável",
      "infected": false,
      "description":
          "O pimento saudável é aquela que não apresenta nenhum sintoma de doença ou infecção.",
    },
    {
      "name": "Tomato Target Spot",
      "diagnosed": "Mancha Alvo do Tomate",
      "infected": true,
      "description":
          "A Mancha Alvo do Tomate é uma doença fúngica que afeta principalmente as folhas, resultando em manchas circulares com um centro necrótico e um halo amarelo ao redor.",
      "symptoms": [
        "As folhas afetadas exibem manchas circulares com um centro necrótico e um halo amarelo ao redor. As manchas podem se expandir e se fundir, causando desfolhamento precoce."
      ],
      "prevent": [
        "Para prevenir a Mancha Alvo do Tomate, é essencial implementar práticas de manejo integrado de doenças. Isso inclui a rotação de culturas para reduzir a sobrevivência do patógeno no solo e o uso de sementes certificadas e livres de doenças.",
        "Além disso, mantenha a área ao redor das plantas limpa e livre de detritos vegetais para reduzir o risco de infecção. Evite o excesso de irrigação e mantenha as plantas bem espaçadas para promover a circulação de ar."
      ],
      "control": [
        "No caso de infecção por Mancha Alvo do Tomate, é crucial remover e descartar todas as folhas e partes da planta afetadas. Isso ajuda a reduzir a fonte de inóculo e a interromper a disseminação da doença. Além disso, a aplicação de fungicidas adequados pode ser necessária para controlar a infecção e proteger as plantas restantes."
      ]
    }
  ];
}
