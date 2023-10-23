# Step 4: Chat list

Now that we have the layout, it is time to implement the chat list.
`ListView` will be our candidate to display the messages.

---

## Widget + Callback = WidgetBuilder

Using callbacks, make it possible the delay of instantiation of `Widget` until it is needed.
The most common usage of this practice is to give back in the Widget Tree the context to its child widget.

```dart
// definition
class SomeWidget extends StatelessWidget {
  SomeWidget({ super.key, required this.builder });

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) => builder(context);
}

// example
SomeWidget(
  builder: (context) {
    return Placeholder();
  }
)
```

[WidgetBuilder documentation](https://api.flutter.dev/flutter/widgets/WidgetBuilder.html)

## ListView()

The most common usage of this widget is to display a list of predifined items.
It will create an unlimited space to display the items.
`reverse` property is used to display the list in reverse order.

```dart
ListView(
  // optional
  reverse: true,
  children: [
    Placeholder(),
    Placeholder(),
  ],
)
```

[ListView documentation](https://api.flutter.dev/flutter/widgets/ListView-class.html)

## ListView.builder()

By using `builder` constructor, two arguments are required:
- `itemCount` is the number of time that the list view will iterate on.
- `itemBuilder` will be called for each `itemCount` iteration.

```dart
ListView.builder(
  // optional
  reverse: true,
  itemCount: 10,
  itemBuilder: (context, index) => Text('Item $index'),
)
```

## ListTile

`ListTile` widgets are often used in `ListView` widgets.
It contains many properties to organize data in a row based on the Material Design specification.

```dart
ListTile(
  leading: Text('Before title'),
  title: Text('Item $index'),
  subtitle: Text('Under title'),
  trailing: Text('After title'),
)
```

[ListTile documentation](https://api.flutter.dev/flutter/material/ListTile-class.html)