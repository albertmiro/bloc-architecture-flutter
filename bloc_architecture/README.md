# Example BLoC Architecture

Example project to explore the BLoC architecture and learn Flutter/Dart

## What's about?

The aim of this project is to learn Flutter and BLoC architecture, as well as keeping things simple, 
secure while using good software development practices.

## What I should know

If you want to clone this project and try it out, you should follow the next steps:

### API KEY

Create an `assets` folder juts in the root of this project, and inside it, you would need to store
the `resources.secrets.json` file.

The IMDB **API Key** could be obtained from this [link](https://www.themoviedb.org/account/signup)

*resources.secrets.json:*

```
{
  "api_key": "YOUR_API_KEY"
}
```

### How to generate the automatic JSON parsing code?

If the `result_model.dart` or `item_model.dart` files are changed, we would need to run:

>$ flutter packages pub run build_runner watch

In order to automatically generate the *.g* files, that would contain the necessary code for JSON parsing given a model.

## What's done & left to do?

- [x] BLoC (Business Logic Component) architecture
- [x] JSON Serialization
- [x] Load a list retrieved from a web service
- [x] Hide Secret API Key
- [ ] Business models & Data models
- [ ] Mapper between models 
- [ ] Open detail when clicking on an item
- [ ] Unit tests
- [ ] Widget tests
- [ ] Code coverage report
- [ ] Check that code style is following most of Dart/Flutter specs

## Current dependencies added at *pubspec.yaml*:

```
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^0.1.2
  rxdart: ^0.18.0
  http: ^0.12.0+1
  json_annotation: ^2.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^1.0.0
  json_serializable: ^2.0.0

```

## Resources used:

In order to work with this project I will be following and merging these different articles:

- [Architect your Flutter project using BLOC pattern](https://medium.com/flutterpub/architecting-your-flutter-project-bd04e144a8f1)
- [Architect your Flutter project using BLOC pattern (Part 2)](https://medium.com/flutterpub/architect-your-flutter-project-using-bloc-pattern-part-2-d8dd1eca9ba5)
- [Heroes App — Handle sensitive data, API and JSON serialization in Flutter](https://medium.com/aubergine-solutions/heroes-app-handle-sensitive-data-api-and-json-serialization-3022d53dfe08)
- [Storing your secret keys in Flutter](https://medium.com/@sokrato/storing-your-secret-keys-in-flutter-c0b9af1c0f69)
- [Flutter SDK Documentation](https://api.flutter.dev/)
- [Effective Dart: Styke](https://dart.dev/guides/language/effective-dart/style)