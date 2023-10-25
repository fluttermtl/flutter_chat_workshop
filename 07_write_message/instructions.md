# Step 7: Write message

We want to be able to type a message and print it on the console.
Use the according widget and use the `sendMessage` method without modifying it.

---

## TextField

`TextField` is a widget that allows the user to enter text.
Multiple callbacks can be given to the `onSubmitted` when the user presses the return key.
This component follow the Material Design specification.

```dart
TextField(
  onSubmitted: (value) => onSubmitted(value),
)
```

[TextField documentation](https://api.flutter.dev/flutter/material/TextField-class.html)

## TextEditingController

The `TextEditingController` is a controller for text input.
It can be considered as a state of a `TextField` widget.
Value is accessed through the `text` property.
// TODO: edit the why
This widget can be related to a controller to manage the text entered by the user by giving it to the `controller` property.

### How to use it
```dart
// Define the controller as a member of Widget class
final controller = TextEditingController(text: 'Hello World');

TextField(
  // Assign the controller to a TextField
  controller: controller,
)

// Retrieve value TextField
print(controller.text);

// Clear the text
controller.clear();
```

[TextEditingController documentation](https://api.flutter.dev/flutter/widgets/TextEditingController-class.html)