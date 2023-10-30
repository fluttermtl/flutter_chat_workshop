# Step 3: Prepare app

In this step, we will cover the basics of Flutter. You will learn how to start a Flutter app and how to create a widget.

Complete the `TODO` using the sections below.

---

## StatelessWidget

Every component in Flutter is a `Widget` class. To create custom widgets, we need to extend the `StatelessWidget` class, which is a derived class of `Widget`.  
`StatelessWidget` are components that don't have any state but can still have properties. By Extending the `StatelessWidget` class, we have to implement the `build` function that returns another `Widget`.

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

The `MaterialApp` is a convenience widget that wraps several widgets commonly required for Material Design applications.  
It gives a lot of options to customize the look and feel of the app.
More than that, it also gives some design behavior according to the framework, like navigation, theme, context, etc.  
The `home` property is the widget that will be the app's root.

```dart
MaterialApp(
  home: SomeWidget(),
)
```

[MaterialApp documentation](https://api.flutter.dev/flutter/material/MaterialApp-class.html)
