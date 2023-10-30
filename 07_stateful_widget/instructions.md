# Step 7: Stateful Widget

Since then, we've been using `StatelessWidget` to create our widgets because it's the simplest way to create a widget without having to deal with the state. But what if you want to change a part of the screen dynamically? For that, we need to use `StatefulWidget`.

`DartPad` or any Flutter IDE like `VSCode` or `Android Studio` can help you to convert a `StatelessWidget` to a `StatefulWidget` easily using the keyboard shortcut (`alt + enter`)

To complete the `TODO`, Just place the cursor on top of the `StatelessWidget` and use the shortcut.

---

## StatefulWidget

A `StatefulWidget` is a widget that contains a state. For that, the structure has to be slightly different. The first part is the `StatefulWidget`, which is the declaration of the Widget like `StatelessWidget`. The second part is the State of the `StatefulWidget` that contains the build method.

```dart
class SomeWidget extends StatefulWidget {
  const SomeWidget({ super.key });

  @override
  State<SomeWidget> createState() => _SomeWidgetState();
}

class _SomeWidgetState extends State<SomeWidget> {
  @override
  Widget build(BuildContext context) => Placeholder();
}

```

## setState

Having a state means that the widget can be updated everytime the state changes.
To update the state, we need to call the `setState` method.

```dart

int counter = 0; // Defined as a member of WidgetState

TextButton(
  child: const Text('Increment counter'),
  onPressed: () {
    // setState triggers a rebuild of the widget (it calls the build method)
    setState(() {
      counter++;
    });
  }
)
```
