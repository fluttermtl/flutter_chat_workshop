# Step 8: Read messages

Retrieve the messages from the database and display them.
Here is the document structure:
- `name` [String?] Name of the user
- `message` [String?] Text of the message
- `time` [int?] Date and time of the message in milliseconds since epoch 

---

## Firestore collection and document

Firestore collection is accessible by using `collection` method that returns a `CollectionReference`.
`CollectionReference` has a `orderBy` method to sort the documents by a property.


```dart
final regularCollection = FirebaseFirestore.instance.collection("subject");
final orderedCollection = collectionReference.orderBy("name");
```

The `get` method of a `CollectionReference` returns documents of the collection. To be notifyed of changes in the collection, use the `snapshots` method.

```dart
final stream = collectionReference.snapshots();
```

[CollectionReference documentation](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/CollectionReference-class.html)

[orderBy documentation](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/Query/orderBy.html)

[snapshots documentation](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/Query/snapshots.html)

## StreamBuilder

To display a stream of data, use a StreamBuilder widget.

```dart
StreamBuilder<T>(
  stream: stream,
  builder: (context, snapshot) {
    // snapshot.connectionState for status
    // snapshot.hasData to know if data is available
    // snapshot.hasError to know if there is an error

    return Text(snapshot.hasData ? snapshot.data!.toString() : '');
  }
)
```

[StreamBuilder documentation](https://pub.dev/documentation/flutter/widgets/StreamBuilder-class.html)

## Record fields

> Records are an anonymous, immutable, aggregate type.


```dart
// record with position argument
(String, int) nameAndAge = ('John Doe', 35);
nameAndAge.$1; // John Doe
nameAndAge.$2; // 35
```

```dart
// record with fields
({String name, int age}) person = (name: 'Jane Doe', age: 27);
person.name; // Jane Doe
person.age; // 27
```

```dart
// record using as a returned value
({int x, int y}) compute() => (x: 10, y: 15);
final coords = compute();
coords.x; // 10
coords.y; // 15
```


[Records documentation](https://dart.dev/language/records)