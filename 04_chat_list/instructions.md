# Step 4: Chat list

Now that we have the layout, it is time to implement the chat list.
`ListView` will be our candidate to display the messages.
This step will cover the different usage of this widget.

---

## Widget + Callback = WidgetBuilder

Using callbacks, make it possible the delay of instantiation of `Widget` until it is needed.
The most common usage of this practice is to give back in the Widget Tree the context to its child widget.

```dart
// definition
class SomeWidget extends StatelessWidget {
  SomeWidget({ required this.builder });

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

```dart
ListView(
  children: [
    Placeholder(),
    Placeholder(),
  ],
)
```

[ListView documentation](https://api.flutter.dev/flutter/widgets/ListView-class.html)

## ListView.builder()

This constructor will create items by passing a builder function with the index of the item.

```dart
ListView.builder(
  itemCount: 10,
  itemBuilder: (context, index) => Text('Item $index'),
)
```

## ListView.separated()

Similar to ListView.builder(), adding the possibilité to separate the items.

```dart
ListView.separated(
  itemCount: 10,
  itemBuilder: (context, index) => Text('Item $index'),
  separatorBuilder: (context, index) => Divider(),
)
```

## ListTile

`ListTile` widgets are often used in `ListView` widgets. It contains many properties to organize data in a row based on the Material Design specification.

```dart
ListTile(
  leading: Text('Before title'),
  title: Text('Item $index'),
  subtitle: Text('Under title'),
  trailing: Text('After title'),
)
```

[ListTile documentation](https://api.flutter.dev/flutter/material/ListTile-class.html)