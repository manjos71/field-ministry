import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:field_ministry/widgets/overlap_stack.dart';

void main() {
  testWidgets('OverlapStack lays out and tests correctly with activeIndex',
      (WidgetTester tester) async {
    int tappedIndex = -1;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: OverlapStack(
              overlap: 16,
              activeIndex: 0,
              children: [
                GestureDetector(
                  onTap: () => tappedIndex = 0,
                  child: Container(
                      key: const ValueKey(0),
                      height: 60,
                      width: 300,
                      color: Colors.red),
                ),
                GestureDetector(
                  onTap: () => tappedIndex = 1,
                  child: Container(
                      key: const ValueKey(1),
                      height: 100,
                      width: 300,
                      color: Colors.blue),
                ),
                GestureDetector(
                  onTap: () => tappedIndex = 2,
                  child: Container(
                      key: const ValueKey(2),
                      height: 60,
                      width: 300,
                      color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    final stackFinder = find.byType(OverlapStack);
    expect(stackFinder, findsOneWidget);
    final size = tester.getSize(stackFinder);
    expect(size.height, 188);

    // Com activeIndex = 0, o toque na região sobreposta (y = 50) deve ir para o filho 0 (ativo por cima)
    await tester.tapAt(const Offset(50, 50));
    expect(tappedIndex, 0);

    // O filho 1 na sua região não sobreposta (y = 80) deve ir para o filho 1
    await tester.tapAt(const Offset(50, 80));
    expect(tappedIndex, 1);
  });
}
