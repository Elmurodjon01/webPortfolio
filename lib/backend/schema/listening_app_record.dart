import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ListeningAppRecord extends FirestoreRecord {
  ListeningAppRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  void _initializeFields() {
    _images = getDataList(snapshotData['images']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listeningApp');

  static Stream<ListeningAppRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListeningAppRecord.fromSnapshot(s));

  static Future<ListeningAppRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListeningAppRecord.fromSnapshot(s));

  static ListeningAppRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListeningAppRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListeningAppRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListeningAppRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListeningAppRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListeningAppRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListeningAppRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ListeningAppRecordDocumentEquality
    implements Equality<ListeningAppRecord> {
  const ListeningAppRecordDocumentEquality();

  @override
  bool equals(ListeningAppRecord? e1, ListeningAppRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.images, e2?.images);
  }

  @override
  int hash(ListeningAppRecord? e) => const ListEquality().hash([e?.images]);

  @override
  bool isValidKey(Object? o) => o is ListeningAppRecord;
}
