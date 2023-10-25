# Step 2: Run application

In this step, we will cover how to initialize an app.

Complete the code to run the `SomeApp` widget.

---

## runApp

The [runApp](https://api.flutter.dev/flutter/widgets/runApp.html) function is the entry point of the Flutter application. The function must be called in the `main` to start the Flutter application. [runApp](https://api.flutter.dev/flutter/widgets/runApp.html) takes a widget as an argument that will be the root of the Flutter app.
To use [runApp](https://api.flutter.dev/flutter/widgets/runApp.html), We must import `package:flutter/material.dart`.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
```
