# Step 4: First page

Now that we have setuped our app, we will go to the first page.
Try to run your first page with a placeholder widget inside.

---

## Scaffold

We describe a page with a `Scaffold` widget. 
Based on Material Design framework, some ui features come along like `AppBar`, `FloatingActionButton` or `Drawer` widget integration. 
It also gives some design behavior like dialog, bottomsheet, etc.

```dart
Scaffold(
  body: SomeWidget(),
)
```

[Scaffold documentation](https://api.flutter.dev/flutter/material/Scaffold-class.html)

## Placeholder

This is the most amazing and useful `Widget` during development and prototyping user interface time.
It can replace any widget or area which is work in progress.
For text we have 'Lorem Ipsum', for `Widget` we have `Placeholder`.


```dart
Container(
  child: Placeholder(),
)
```

[Placeholder documentation](https://api.flutter.dev/flutter/widgets/Placeholder-class.html)
