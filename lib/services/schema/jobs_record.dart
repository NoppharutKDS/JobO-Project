import 'dart:async';

import 'package:collection/collection.dart';

import 'util/firestore_util.dart';
import 'util/schema_util.dart';

import 'index.dart';
import '../../util/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "j_id" field.
  String? _jId;
  String get jId => _jId ?? '';
  bool hasJId() => _jId != null;

  // "j_name" field.
  String? _jName;
  String get jName => _jName ?? '';
  bool hasJName() => _jName != null;

  // "j_category" field.
  String? _jCategory;
  String get jCategory => _jCategory ?? '';
  bool hasJCategory() => _jCategory != null;

  // "j_description" field.
  String? _jDescription;
  String get jDescription => _jDescription ?? '';
  bool hasJDescription() => _jDescription != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "j_duration" field.
  int? _jDuration;
  int get jDuration => _jDuration ?? 0;
  bool hasJDuration() => _jDuration != null;

  void _initializeFields() {
    _jId = snapshotData['j_id'] as String?;
    _jName = snapshotData['j_name'] as String?;
    _jCategory = snapshotData['j_category'] as String?;
    _jDescription = snapshotData['j_description'] as String?;
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _jDuration = castToType<int>(snapshotData['j_duration']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? jId,
  String? jName,
  String? jCategory,
  String? jDescription,
  DocumentReference? companyRef,
  DocumentReference? userRef,
  int? jDuration,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'j_id': jId,
      'j_name': jName,
      'j_category': jCategory,
      'j_description': jDescription,
      'companyRef': companyRef,
      'userRef': userRef,
      'j_duration': jDuration,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    return e1?.jId == e2?.jId &&
        e1?.jName == e2?.jName &&
        e1?.jCategory == e2?.jCategory &&
        e1?.jDescription == e2?.jDescription &&
        e1?.companyRef == e2?.companyRef &&
        e1?.userRef == e2?.userRef &&
        e1?.jDuration == e2?.jDuration;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.jId,
        e?.jName,
        e?.jCategory,
        e?.jDescription,
        e?.companyRef,
        e?.userRef,
        e?.jDuration
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
