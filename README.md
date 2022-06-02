![Build](https://github.com/SebastianWaloszek/next_photo/actions/workflows/build.yml/badge.svg)
[![codecov](https://codecov.io/gh/SebastianWaloszek/next_photo/branch/master/graph/badge.svg?token=FX7V3V8AA4)](https://codecov.io/gh/SebastianWaloszek/next_photo)

# NextPhoto <!-- omit in toc -->

A Flutter Instagram look-alike photo blog application. Uses [jsonplaceholder](https://jsonplaceholder.typicode.com/) for mock data. Please refer to [coding task](#coding-task) for info about desired features.

🚧  Still under development. 👷‍♂️ 🚧  So not all things are finished or polished yet.

![alt text](https://mir-s3-cdn-cf.behance.net/project_modules/1400/62a8c9143896211.62830596b5878.png)

## Table of contents <!-- omit in toc -->
- [Coding task](#coding-task)
- [Implemented functionality](#implemented-functionality)
- [Figma design](#figma-design)
- [Web demo](#web-demo)
- [Project structure](#project-structure)
- [Module structure](#module-structure)
- [Flutter version](#flutter-version)
- [Running the app](#running-the-app)
- [Tests](#tests)
- [Index files](#index-files)
- [Documentation](#documentation)
- [Code coverage](#code-coverage)
- [App icon](#app-icon)

## Coding task
Create the following Flutter app:
1. Create Infinite scroll list with images (use https://jsonplaceholder.typicode.com photos as API source)
2. Each image in the list has a title, an image preview and a like button.
3. By tapping on a preview image user is shown a full-sized image in a popup.
4. User can like and unlike images by tapping Like button.
5. Like state persist between app launches.

## Implemented functionality
These is the list of all app features available to the user as of now:

- Fetching photos. 
  - [Jsonplaceholder](https://jsonplaceholder.typicode.com) was used as data source in combination with [picsum](https://picsum.photos/) to show more interesting images.
- Liking and unliking photos. 
  - Each like state for a photo is persisted between app launches.
- Full photo view.
  - After clicking on a photo a separate image view is opened with zoom functionality.
- Photo list refresh.
  - The photo data is refreshed each time the list is dragged from the top.   

Other functionality is either mocked, placeholders or unused for now.

## Figma design
The figma design file that was prepared by me for this app can be found [here](https://www.figma.com/file/kWh5yBJmKgaLXaM7avh39H/next_photo?node-id=5%3A600).

## Web demo
The live web demo version of the app can be found [here](https://sebastianwaloszek.github.io/nextphoto.web/#/).

## Project structure

The project's main [src](lib/src) module contains 4 submodules:

- [app](lib/src/app) - contains code responsible for configuring and running the application.
- [base](lib/src/base) - contains components that can serve as a basis for any flutter project.
- [common](lib/src/common) - contains reusable components that are project specific and can be shared by many separate
  features.
- [features](lib/src/features) - contains modules for all the app's main features.

## Module structure

Each module follows strict layer segregation. Three main layers are defined:

- **data** - manages the application logic related to communicating with the network, retrieving & sending data, managing local storage etc.

- **domain** - is dedicated to business level logic.

- **presentation** - is responsible for presenting data to screen and handling user interactions.

## Flutter version

This app was developed and tested on the following flutter channel and version:
```javascript
Flutter 3.0.0 • channel stable • https://github.com/flutter/flutter.git
Framework • revision ee4e09cce0 (7 days ago) • 2022-05-09 16:45:18 -0700
Engine • revision d1b9a6938a
Tools • Dart 2.17.0 • DevTools 2.12.2
```

## Running the app
If you want to run the app using the terminal:
- Debug & Development
```
flutter run --flavor dev lib/src/main_dev.dart
```
- Release & Production
```
flutter run --release --flavor prod lib/src/main_prod.dart
```
- Web
```
flutter run -d chrome --web-renderer html -t lib/src/main_dev.dart
```
- MacOS, Windows, Linux
```
flutter run -d macos|windows|linux -t lib/src/main_dev.dart
```

## Tests
Run unit tests by typing:
```
flutter test
```
Run integration tests by typing:
```
flutter test integration_test --flavor=stage
```

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

## Documentation
Documentation for the whole app can be found [here](https://sebastianwaloszek.github.io/nextphoto.doc/index.html). Generate it on your own by running:
```
flutter pub global run dartdoc 
```

## Code coverage
To generate code coverage reports run:
```
dart pub global activate remove_from_coverage
flutter test --coverage 
remove_from_coverage -f coverage/lcov.info -r '.g.dart|.freezed.dart$|\bgenerated\b'
genhtml coverage/lcov.info -o coverage/html
```

## App icon
To change the app icon on mobile change the files inside [launcher_icon](launcher_icon) and then run:
```
flutter pub get
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-development.yaml
```
Running it for one file will run it for all flavors.
