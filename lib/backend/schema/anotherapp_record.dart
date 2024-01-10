import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AnotherappRecord extends FirestoreRecord {
  AnotherappRecord._(
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
      FirebaseFirestore.instance.collection('anotherapp');

  static Stream<AnotherappRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnotherappRecord.fromSnapshot(s));

  static Future<AnotherappRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnotherappRecord.fromSnapshot(s));

  static AnotherappRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnotherappRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnotherappRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnotherappRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnotherappRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnotherappRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnotherappRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class AnotherappRecordDocumentEquality implements Equality<AnotherappRecord> {
  const AnotherappRecordDocumentEquality();

  @override
  bool equals(AnotherappRecord? e1, AnotherappRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.images, e2?.images);
  }

  @override
  int hash(AnotherappRecord? e) => const ListEquality().hash([e?.images]);

  @override
  bool isValidKey(Object? o) => o is AnotherappRecord;
}
