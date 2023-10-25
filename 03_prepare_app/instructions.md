# Step 3: Prepare app

This step will introduce you to the root and basics or Flutter.
The framework is base on Widget as POO is based on Object.
Complete the `TODO` using the sections below.

---

## StatelessWidget

Every component in Flutter are `Widget` class and when it comes to create our own widgets, it starts with `StatelessWidget` class.
`StatelessWidget` are components that don't have any state, but can still have properties.
By Extending the `StatelessWidget` class, we have to implement the `build` function that will return the content of the component.

```dart
class MyWidget extends StatelessWidget {
  MyWidget({super.key});

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
`home` property is the widget that will be the root of the app.

```dart
MaterialApp(
  home: SomeWidget(),
)
```

[MaterialApp documentation](https://api.flutter.dev/flutter/material/MaterialApp-class.html)
