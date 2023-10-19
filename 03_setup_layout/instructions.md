# Setup layout

When it comes to organizing the layout of a Flutter app, we can use the `Flex` widget.

---

## Flex

`Flex` is a framework for building responsive, accessible, and performant applications.
This framework is highly used by the web development and have been brought into Flutter layout widget family.
The two main components of `Flex` are `Column` for vertical layout and `Row` for horizontal layout.

```dart
// Row(
Column(
  children: [
    Text('Hello'),
    Text('World'),
  ]
)
```

[Flex documentation](https://api.flutter.dev/flutter/widgets/Flex-class.html)

## Expanded and Flexible

`Expanded` and `Flexible` are widgets that can be used to expand or shrink a widget to fill the available space. Those two widgets are used to fill the available space under `Flex` widget. `Expanded` will take the available space and `Flexible` will take the remaining space. They both have the flex property to specify the flex repartition.

```dart
Expanded(
  child: Text('Hello'),
)
```

[Expanded documentation](https://api.flutter.dev/flutter/widgets/Expanded-class.html)

[Flexible documentation](https://api.flutter.dev/flutter/widgets/Flexible-class.html)

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