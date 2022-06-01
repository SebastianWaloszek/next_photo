import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:next_photo/src/common/presentation/theme/app_icons.dart';
import 'package:next_photo/src/di/injector.dart';
import 'package:next_photo/src/features/albums/presentation/cubits/photo_like/photo_like_cubit.dart';
import 'package:next_photo/src/features/home/presentation/widgets/photo_list_item.dart';

import '../../../../util/mock_classes.dart';
import '../../../../util/widget_test_helpers.dart';
import '../../../../util/widgets/localized_material_app.dart';
import '../../albums/domain/albums_domain_test_data.dart';

void main() {
  late PhotoLikeCubit photoLikeCubit;

  setUpAll(() {
    photoLikeCubit = PhotoLikeCubitMock();
    whenListen(
      photoLikeCubit,
      const Stream<PhotoLikeState>.empty(),
      initialState: const PhotoLikeState.initial(),
    );

    getIt.registerFactory<PhotoLikeCubit>(() => photoLikeCubit);
  });

  group(
    '$PhotoListItem',
    () {
      testWidgets(
        'should show photo details for not liked photo',
        (WidgetTester tester) async {
          await mockNetworkImages(() async {
            await tester.pumpWidget(
              const LocalizedMaterialApp(
                child: PhotoListItem(photo: photo1),
              ),
            );
            await tester.pumpAndSettle();

            find.textContaining(photo1.title, findRichText: true).once();

            findDecorationImage(url: photo1.thumbnailUrl).once();

            find.byIcon(AppIcons.heart).once();
          });
        },
      );

      testWidgets(
        'should show photo details for liked photo',
        (WidgetTester tester) async {
          await mockNetworkImages(() async {
            await tester.pumpWidget(
              const LocalizedMaterialApp(
                child: PhotoListItem(photo: photo2),
              ),
            );
            await tester.pumpAndSettle();

            find.textContaining(photo2.title, findRichText: true).once();

            findDecorationImage(url: photo2.thumbnailUrl).once();

            find.byIcon(AppIcons.heartFilled).once();
          });
        },
      );
    },
  );
}
