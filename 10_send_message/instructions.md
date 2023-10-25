# Step 10: Send message

Finally it's the last step. Let's complete the chat app by sending a message to the Firebase Firestore database. This step can be challenging, but you can do it!

Make sure you are sending the right data structure to the database. (Check the previous step)

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
