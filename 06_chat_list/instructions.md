# Step 6: Chat list

It is time to implement the chat list. We will implement the chat list using `ListView` to display messages. Each message will contain the time, the sender's name, and the text.

---

## ListView.builder()

`ListView` is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross-axis, the children are required to fill the `ListView`.

`ListView` has a useful constructor called `builder`. It is for creating a list view with a large number of children. This constructor is appropriate for list views with a large (or infinite) number of children because the builder is called only for those children that are actually visible.

The constructor requires two arguments:

- `itemCount`: Number of items in the list.
- `itemBuilder`: Callback function to build each item.

```dart
ListView.builder(
  // optional
  reverse: true, // To reverse the list
  itemCount: 10,
  itemBuilder: (context, index) => Text('Item $index'),
)
```

[ListView documentation](https://api.flutter.dev/flutter/widgets/ListView-class.html)

## ListTile

`ListTile` widgets are often used in `ListView` widgets. It contains many properties to organize data in a row based on the Material Design specification.

```dart
ListTile(
  leading:  Text('Before title'),
  title:    Text('Item $index'),
  subtitle: Text('Under title'),
  trailing: Text('After title'),
)
```

[ListTile documentation](https://api.flutter.dev/flutter/material/ListTile-class.html)
