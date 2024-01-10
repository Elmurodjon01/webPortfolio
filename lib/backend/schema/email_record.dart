import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EmailRecord extends FirestoreRecord {
  EmailRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  bool hasSender() => _sender != null;

  // "senderName" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "timeSent" field.
  DateTime? _timeSent;
  DateTime? get timeSent => _timeSent;
  bool hasTimeSent() => _timeSent != null;

  void _initializeFields() {
    _sender = snapshotData['sender'] as String?;
    _senderName = snapshotData['senderName'] as String?;
    _message = snapshotData['message'] as String?;
    _timeSent = snapshotData['timeSent'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('email');

  static Stream<EmailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmailRecord.fromSnapshot(s));

  static Future<EmailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmailRecord.fromSnapshot(s));

  static EmailRecord fromSnapshot(DocumentSnapshot snapshot) => EmailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmailRecordData({
  String? sender,
  String? senderName,
  String? message,
  DateTime? timeSent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender': sender,
      'senderName': senderName,
      'message': message,
      'timeSent': timeSent,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmailRecordDocumentEquality implements Equality<EmailRecord> {
  const EmailRecordDocumentEquality();

  @override
  bool equals(EmailRecord? e1, EmailRecord? e2) {
    return e1?.sender == e2?.sender &&
        e1?.senderName == e2?.senderName &&
        e1?.message == e2?.message &&
        e1?.timeSent == e2?.timeSent;
  }

  @override
  int hash(EmailRecord? e) => const ListEquality()
      .hash([e?.sender, e?.senderName, e?.message, e?.timeSent]);

  @override
  bool isValidKey(Object? o) => o is EmailRecord;
}
