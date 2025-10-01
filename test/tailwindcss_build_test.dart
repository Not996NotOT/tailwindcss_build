
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

void main() {
  group('ContainerBuilder Size Constraints Tests', () {
    testWidgets('min-width methods work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Test')
                .asContainer()
                .minW32()
                .build(),
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.minWidth, equals(128.0));
    });

    testWidgets('max-width methods work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Test')
                .asContainer()
                .maxW48()
                .build(),
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.maxWidth, equals(192.0));
    });

    testWidgets('min-height methods work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Test')
                .asContainer()
                .minH24()
                .build(),
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.minHeight, equals(96.0));
    });

    testWidgets('max-height methods work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Test')
                .asContainer()
                .maxH32()
                .build(),
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.maxHeight, equals(128.0));
    });

    testWidgets('container scale methods work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Test')
                .asContainer()
                .minWsm()
                .maxWlg()
                .build(),
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.minWidth, equals(384.0));
      expect(container.constraints?.maxWidth, equals(512.0));
    });

    testWidgets('custom value methods work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Test')
                .asContainer()
                .minW(200.0)
                .maxW(600.0)
                .minH(100.0)
                .maxH(400.0)
                .build(),
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.minWidth, equals(200.0));
      expect(container.constraints?.maxWidth, equals(600.0));
      expect(container.constraints?.minHeight, equals(100.0));
      expect(container.constraints?.maxHeight, equals(400.0));
    });

    testWidgets('full and screen methods work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Test')
                .asContainer()
                .minWFull()
                .maxWFull()
                .minHFull()
                .maxHFull()
                .build(),
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.constraints?.minWidth, equals(double.infinity));
      expect(container.constraints?.maxWidth, equals(double.infinity));
      expect(container.constraints?.minHeight, equals(double.infinity));
      expect(container.constraints?.maxHeight, equals(double.infinity));
    });
  });
}
