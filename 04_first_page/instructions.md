# Step 4: First page

We just finished the basic setup of our application. Let's create the first page.
For now, we'll create a page with a `Placeholder` widget inside. Let's complete the `TODO` in the code.

---

## Scaffold

`Scaffold` describes the Material Design visual layout structure. It makes it easy to implement the Material Design layout and use some Material Design features like `AppBar`, `FloatingActionButton`, or `Drawer` widgets, along with features like dialog, bottom sheet, etc.

```dart
Scaffold(
  body: SomeWidget(),
)
```

[Scaffold documentation](https://api.flutter.dev/flutter/material/Scaffold-class.html)

## Placeholder

The `Placeholder` is a useful `Widget` during development and prototyping user interface time. Just put `Placeholder` in your code, and you'll see a box with a cross in it. It's a great way to see the layout of your app without implementing the entire UI.
You can think this way, `Placeholder` is [Lorem Ipsum](https://www.lipsum.com/) for `Widget`.

```dart
Container(
  child: Placeholder(),
)
```

[Placeholder documentation](https://api.flutter.dev/flutter/widgets/Placeholder-class.html)
