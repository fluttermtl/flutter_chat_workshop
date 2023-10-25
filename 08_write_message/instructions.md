# Step 8: Write message

Now, we want to make our app able to write and display a message in the chat list.

Complete the `TODO`s and run the app. It should have a text field that takes a message. Once the user presses the return key, the message the user typed should be displayed in the chat list.

---

## TextField

`TextField` is a widget that allows the user to enter text. Once the user presses the enter key with a new value in the `TestField`, it calls back the `onSubmitted`.

```dart
TextField(
  onSubmitted: (value) => onSubmitted(value),
)
```

[TextField documentation](https://api.flutter.dev/flutter/material/TextField-class.html)

## TextEditingController

The `TextEditingController` is a text input controller that controls the `TextField`.

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
