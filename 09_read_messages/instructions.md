# Step 9: Read messages

Now, we want to make our app able to read messages from the database(Firebase) and display them in the chat list. We'll use Firebase Firestore to store as a database.

*You don't need to worry about Firebase Configuration for this Workshop. We'll provide a pre-configured Firebase for you.*

Here is the document structure in the Firestore database:

- `name` [String?] Name of the user
- `message` [String?] Text of the message
- `time` [int?] Date and time of the message in milliseconds(Epoch)

---

## Firestore collection and document

Firestore collection is accessible using the `collection` method that returns a `CollectionReference`. It has an `orderBy` method to sort the documents by a property.

```dart
final regularCollection = FirebaseFirestore.instance.collection("subject");

// from Z to A
final orderedCollection = collectionReference.orderBy("name", descending: true);
```

The `get` method of a `CollectionReference` returns documents of the collection. To be notified of changes in the collection, use the `snapshots` method. It returns a `Stream<QuerySnapshot>`.

```dart
final stream = collectionReference.snapshots();
```

[CollectionReference documentation](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/CollectionReference-class.html)

[orderBy documentation](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/Query/orderBy.html)

[snapshots documentation](https://pub.dev/documentation/cloud_firestore/latest/cloud_firestore/Query/snapshots.html)

## StreamBuilder

`StreamBuilder` is a widget that builds itself based on the latest snapshot of interaction with a `Stream`. It automatically synchronizes the widget with the latest data and changes in the stream.

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
