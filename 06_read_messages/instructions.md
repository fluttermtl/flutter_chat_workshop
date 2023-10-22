# Step 6: Read messages

---

## Firestore collection and document

Firestore collection is accessible by using [collection()](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/CollectionReference/collection.html) method that returns a [CollectionReference](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/CollectionReference-class.html)


```dart
final collectionReference = FirebaseFirestore.instance.collection("subject");
```

The [get()](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/Query/get.html) method of a `CollectionReference` returns documents of the collection. To be notifyed of changes in the collection, use the [snapshots](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/Query/snapshots.html) method.

```dart
final stream = FirebaseFirestore.instance.collection("subject").snapshots();
```

## StreamBuilder

To display a stream of data, use a StreamBuilder widget.

```dart
StreamBuilder<T>(
  stream: stream,
  builder: (context, snapshot) {
    // snapshot.connectionState for status
    // snapshot.hasData to know if data is available
    // snapshot.hasError to know if there is an error

    return Text(snapshot.hasData ? snapshot.data.toString() : '');
  }
)
```

[StreamBuilder](https://pub.dev/documentation/flutter/widgets/StreamBuilder-class.html)
