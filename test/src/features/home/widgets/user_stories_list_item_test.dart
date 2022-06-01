import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:next_photo/src/features/home/presentation/widgets/user_stories_list_item.dart';

import '../../../../util/widgets/localized_material_app.dart';
import '../../users/domain/users_domain_test_data.dart';

void main() {
  group(
    '$UserStoriesListItem',
    () {
      testWidgets(
        'should display user name',
        (WidgetTester tester) async {
          await mockNetworkImages(() async {
            await tester.pumpWidget(
              const LocalizedMaterialApp(
                child: UserStoriesListItem(
                  user: user1,
                ),
              ),
            );
            await tester.pumpAndSettle();

            expect(find.text('leanne.graham'), findsOneWidget);
          });
        },
      );
    },
  );
}
