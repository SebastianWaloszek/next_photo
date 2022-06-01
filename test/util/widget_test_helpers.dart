import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension FinderMatchExtension on Finder {
  void never() => expect(this, findsNothing);

  void once() => expect(this, findsOneWidget);

  void times(int n) => expect(this, findsNWidgets(n));
}

Finder findDecorationImage({required String url}) => find.byWidgetPredicate(
      (widget) =>
          widget is Ink &&
          widget.decoration is BoxDecoration &&
          (widget.decoration! as BoxDecoration).image != null &&
          (widget.decoration! as BoxDecoration).image!.image is NetworkImage &&
          ((widget.decoration! as BoxDecoration).image!.image as NetworkImage)
                  .url ==
              url,
    );
