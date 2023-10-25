# Step 7: Store in memory

For our purpose, `StatelessWidget` has some limitations by not having a state.
On this step, change `StatelessWidget` to `StatefulWidget` using keyboard shortcuts or by typing it.

---

## StatefulWidget

A `StatefulWidget` is a widget that contains a state.
For that, the structure has to be a bit different.
The first part is the `StatefulWidget` which the declaration of the Widget like `StatelessWidget`.
The second part is the State of the `StatefulWidget` that contains the build method.

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

Having a state means that the widget can be updated anytime, not depending on parents widgets.
To update the state, we need to call the `setState` method.

```dart
TextButton(
  child: const Text('Increment counter'),
  onPressed: () {
    setState(() {
      counter++;
    });
  }
)
```