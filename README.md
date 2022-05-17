# next_photo

A Flutter blog application. 

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Index files
To update the list of files included in documentation for `base`, `common` and `features` libraries code generation with [index_generator](https://pub.dev/packages/index_generator) is used.

To activate `index_generator` run:
```
flutter pub global activate index_generator
```

To update index files run:
```
flutter pub global run index_generator
```

Right now the libraries `app` and `di` don't use code generation as they are small and usually don't change in terms of included files.

## Code coverage
To generate code coverage run:
```
dart pub global activate remove_from_coverage
flutter test --coverage 
remove_from_coverage -f coverage/lcov.info -r '.g.dart|.freezed.dart$|\bgenerated\b'
genhtml coverage/lcov.info -o coverage/html
```