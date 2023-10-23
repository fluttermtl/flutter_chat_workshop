# Step 5: Write message

We want to be able to type a message and print it on the console.
Use the according widget and use the `sendMessage` method without modifying it.

---

## TextField

`TextField` is a widget that allows the user to enter text. This widget can be related to a controller to manage the text entered by the user by giving it to the `controller` property. Multiple callbacks can be given to the `onSubmitted` when the user presses the return key and `onChanged` properties when the user types. This component follow the Material Design specification.

```dart
TextField(
  controller: controller,
  onSubmitted: (value) => onSubmitted(value),
  onChanged: (value) => onChanged(value),
)
```

[TextField documentation](https://api.flutter.dev/flutter/material/TextField-class.html)

## TextEditingController

The `TextEditingController` is a controller for text input. It can be considered as a state of a `TextField` widget. Value is accessed through the `text` property.

```dart
final controller = TextEditingController(text: 'Hello World');
print(controller.text);

controller.clear(); // Clear the text
```

[TextEditingController documentation](https://api.flutter.dev/flutter/widgets/TextEditingController-class.html)