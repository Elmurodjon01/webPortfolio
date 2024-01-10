import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ProjectsJRecord extends FirestoreRecord {
  ProjectsJRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ProjectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  void _initializeFields() {
    _projectName = snapshotData['ProjectName'] as String?;
    _images = getDataList(snapshotData['images']);
    _info = snapshotData['info'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Projects_J');

  static Stream<ProjectsJRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsJRecord.fromSnapshot(s));

  static Future<ProjectsJRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsJRecord.fromSnapshot(s));

  static ProjectsJRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsJRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsJRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsJRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsJRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsJRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsJRecordData({
  String? projectName,
  String? info,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProjectName': projectName,
      'info': info,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectsJRecordDocumentEquality implements Equality<ProjectsJRecord> {
  const ProjectsJRecordDocumentEquality();

  @override
  bool equals(ProjectsJRecord? e1, ProjectsJRecord? e2) {
    const listEquality = ListEquality();
    return e1?.projectName == e2?.projectName &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.info == e2?.info;
  }

  @override
  int hash(ProjectsJRecord? e) =>
      const ListEquality().hash([e?.projectName, e?.images, e?.info]);

  @override
  bool isValidKey(Object? o) => o is ProjectsJRecord;
}
