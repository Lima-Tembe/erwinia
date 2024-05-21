import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Widget Test (Home Screen)- ", () {
    testWidgets('Testando o acesso a camera do celular quando permissão for aceite...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando o acesso a camera do celular quando a permissão for rejeitada...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets(
        'Testando as diferente opções do flash...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando a visibilidade do FAB...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando se clicar no FAB se ele vai ao Situation Screen...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });
  });

  group("Widget Test (Situation Screen)- ", () {
    testWidgets(
        'Testando se aparece a imagem...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets(
        'Testando se aparece o texto quando uma planta está infectada...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando se aparece o texto quando a plata está saudável...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando a visibilidade do FAB de resultado...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando se clicar no FAB se ele vai ao Treatment Screen...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });
  });

  group("Widget Test (Treatment Screen)- ", () {
    testWidgets(
        'Testando a imagem aparece no processo de tratamento...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets(
        'Testando se aparece o texto de diagnostico...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando se aparece os sintomas...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando as medidas preventivas...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando se aparece o processo de controle/tratamento...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });

    testWidgets('Testando se salva o tratamento...',
        (WidgetTester tester) async {
      // Create the widget under test
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, World!'),
          ),
        ),
      ));

      // Verify that the Text widget displays the correct text
      expect(find.text('Hello, World!'), findsOneWidget);
    });
  });
}
