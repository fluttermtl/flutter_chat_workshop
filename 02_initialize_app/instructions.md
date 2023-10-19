# Initialize app

On this step, we will covert how to initialize an app. 
The sections bellow are about mandatory functions and widget to create the root structure of a Flutter application.

---

## runApp

The `runApp` function is used to initialize the app.
This function is called in a main function that will be the entry point of the app.
It takes as input a widget that will be the root of the app.

```dart
void main() {
  runApp(MyApp());
}
```

[runApp documentation](https://api.flutter.dev/flutter/widgets/runApp.html)


## Widget

`Widget` is the base class for all widgets in Flutter.
There is two types of widgets in Flutter: `StatelessWidget` and `StatefulWidget`.
For now, we are going to focus on the `StatelessWidget`.
By Extending the `StatelessWidget` class, we have to implement the `build` function that will return the content of the component.

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SomeWidget();
  }
}
```

[Widget documentation](https://api.flutter.dev/flutter/widgets/Widget-class.html)

[StatelessWidget documentation](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)

[StatefulWidget documentation](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)

## MaterialApp

The `MaterialApp` is a widget based on Material Design framework.
It gives a lot of options to customize the look and feel of the app.
More that than, it gives also some design behavior according to the framework like navigation, theme, context, etc.

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SomeWidget(),
    );
  }
}
```

[MaterialApp documentation](https://api.flutter.dev/flutter/material/MaterialApp-class.html)

## Scaffold

We describe a page with a `Scaffold` widget. 
Based on Material Design framework, some ui features come along like `AppBar`, `FloatingActionButton` or `Drawer` widget integration. 
It also gives some design behavior like dialog, bottomsheet, etc.

```dart
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SomeWidget(),
    );
  }
}
```

[Scaffold documentation](https://api.flutter.dev/flutter/material/Scaffold-class.html)