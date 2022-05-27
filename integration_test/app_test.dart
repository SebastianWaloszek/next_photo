// This is a basic Flutter integration test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:next_photo/src/common/presentation/theme/app_icons.dart';

import 'package:next_photo/src/main_dev.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'Like photo smoke test',
    (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle(const Duration(seconds: 5));

      // Find first not liked photo.
      expect(
        find.byIcon(AppIcons.heart).at(1),
        findsOneWidget,
      );
      expect(
        find.textContaining(
          'accusamus beatae ad facilis cum similique qui sunt',
          findRichText: true,
        ),
        findsOneWidget,
      );

      // Like photo.
      await tester.tap(
        find.byIcon(AppIcons.heart).at(1),
      );
      await tester.pumpAndSettle();

      // Find photo liked.
      expect(
        find.byIcon(AppIcons.heartFilled).first,
        findsOneWidget,
      );

      // Unlike photo.
      await tester.tap(
        find.byIcon(AppIcons.heartFilled).first,
      );
      await tester.pumpAndSettle();

      // Find unliked photo.
      expect(
        find.byIcon(AppIcons.heart).at(1),
        findsOneWidget,
      );
    },
  );
}
