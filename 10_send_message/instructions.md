# Step 10: Send message

This last step is to send a message to the chat.

---

## Create a document / message

To create a document in a collection, we use the `add()` method of the `CollectionReference` class.

```dart
final data = <String, dynamic>{
  "firstname": 'John',
  "height": 6,
};

FirebaseFirestore.instance.collection("subject").add(data);
```

[add documentation](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/CollectionReference/add.html)
