# Step 7: Send message

---

## Create a document / message

```dart
FirebaseFirestore.instance.collection("subject").add(data);
```

## Empty the text field

```dart
controller.clear();
```
