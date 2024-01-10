import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ProjectsRecord extends FirestoreRecord {
  ProjectsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "listeningApp" field.
  ImagesStruct? _listeningApp;
  ImagesStruct get listeningApp => _listeningApp ?? ImagesStruct();
  bool hasListeningApp() => _listeningApp != null;

  // "nearbyApp" field.
  ImagesStruct? _nearbyApp;
  ImagesStruct get nearbyApp => _nearbyApp ?? ImagesStruct();
  bool hasNearbyApp() => _nearbyApp != null;

  void _initializeFields() {
    _listeningApp = ImagesStruct.maybeFromMap(snapshotData['listeningApp']);
    _nearbyApp = ImagesStruct.maybeFromMap(snapshotData['nearbyApp']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsRecord.fromSnapshot(s));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsRecord.fromSnapshot(s));

  static ProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsRecordData({
  ImagesStruct? listeningApp,
  ImagesStruct? nearbyApp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'listeningApp': ImagesStruct().toMap(),
      'nearbyApp': ImagesStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "listeningApp" field.
  addImagesStructData(firestoreData, listeningApp, 'listeningApp');

  // Handle nested data for "nearbyApp" field.
  addImagesStructData(firestoreData, nearbyApp, 'nearbyApp');

  return firestoreData;
}

class ProjectsRecordDocumentEquality implements Equality<ProjectsRecord> {
  const ProjectsRecordDocumentEquality();

  @override
  bool equals(ProjectsRecord? e1, ProjectsRecord? e2) {
    return e1?.listeningApp == e2?.listeningApp &&
        e1?.nearbyApp == e2?.nearbyApp;
  }

  @override
  int hash(ProjectsRecord? e) =>
      const ListEquality().hash([e?.listeningApp, e?.nearbyApp]);

  @override
  bool isValidKey(Object? o) => o is ProjectsRecord;
}
