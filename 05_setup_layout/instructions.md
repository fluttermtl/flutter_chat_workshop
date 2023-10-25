# Step 5: Setup layout

The main focus of this step is to setup the layout of the application.
Use the `Placeholder` widget to simulate the components such as chat list and text input.

![Setup layout](https://raw.githubusercontent.com/fluttermtl/flutter_chat_workshop/assets/setup_layout.png)

---

## Column and Row

Flex is a framework for building responsive, accessible, and performant applications.
This framework is highly used by the web development and have been brought into Flutter layout widget family.
The two main components of `Flex` are `Column` for vertical layout and `Row` for horizontal layout.

```dart
// Row(
Column(
  children: [
    SomeWidget(),
    SomeOtherWidget(),
  ],
)
```

[Flex documentation](https://api.flutter.dev/flutter/widgets/Flex-class.html)

## Expanded and Flexible

`Expanded` and `Flexible` are widgets that can be used to expand or shrink a widget to fill the available space.
Those two widgets are used to fill the available space under `Flex` widget.
`Expanded` will take the available space and `Flexible` will take the remaining space.
They both have the flex property to specify the flex repartition.

Those widgets are used under Column or Row widgets.

```dart
Expanded(
  child: Text('Hello'),
)
```

[Expanded documentation](https://api.flutter.dev/flutter/widgets/Expanded-class.html)

[Flexible documentation](https://api.flutter.dev/flutter/widgets/Flexible-class.html)

## Placeholder

Placeholder has a `fallbackHeight` property to specify the height or `fallbackWidth` property to specify the width of the placeholder.

```dart
Placeholder(
  // optional
  fallbackHeight: 64,
)
```

[Placeholder documentation](https://api.flutter.dev/flutter/widgets/Placeholder-class.html)