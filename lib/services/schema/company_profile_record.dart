import 'dart:async';

import 'package:collection/collection.dart';

import 'util/firestore_util.dart';
import 'util/schema_util.dart';

import 'index.dart';

class CompanyProfileRecord extends FirestoreRecord {
  CompanyProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "c_id" field.
  String? _cId;
  String get cId => _cId ?? '';
  bool hasCId() => _cId != null;

  // "c_name" field.
  String? _cName;
  String get cName => _cName ?? '';
  bool hasCName() => _cName != null;

  // "c_address" field.
  String? _cAddress;
  String get cAddress => _cAddress ?? '';
  bool hasCAddress() => _cAddress != null;

  // "c_photo" field.
  String? _cPhoto;
  String get cPhoto => _cPhoto ?? '';
  bool hasCPhoto() => _cPhoto != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "userData" field.
  DocumentReference? _userData;
  DocumentReference? get userData => _userData;
  bool hasUserData() => _userData != null;

  // "ratings" field.
  List<double>? _ratings;
  List<double> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  void _initializeFields() {
    _cId = snapshotData['c_id'] as String?;
    _cName = snapshotData['c_name'] as String?;
    _cAddress = snapshotData['c_address'] as String?;
    _cPhoto = snapshotData['c_photo'] as String?;
    _email = snapshotData['email'] as String?;
    _logo = snapshotData['logo'] as String?;
    _userData = snapshotData['userData'] as DocumentReference?;
    _ratings = getDataList(snapshotData['ratings']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('companyProfile');

  static Stream<CompanyProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyProfileRecord.fromSnapshot(s));

  static Future<CompanyProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyProfileRecord.fromSnapshot(s));

  static CompanyProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyProfileRecordData({
  String? cId,
  String? cName,
  String? cAddress,
  String? cPhoto,
  String? email,
  String? logo,
  DocumentReference? userData,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'c_id': cId,
      'c_name': cName,
      'c_address': cAddress,
      'c_photo': cPhoto,
      'email': email,
      'logo': logo,
      'userData': userData,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyProfileRecordDocumentEquality
    implements Equality<CompanyProfileRecord> {
  const CompanyProfileRecordDocumentEquality();

  @override
  bool equals(CompanyProfileRecord? e1, CompanyProfileRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cId == e2?.cId &&
        e1?.cName == e2?.cName &&
        e1?.cAddress == e2?.cAddress &&
        e1?.cPhoto == e2?.cPhoto &&
        e1?.email == e2?.email &&
        e1?.logo == e2?.logo &&
        e1?.userData == e2?.userData &&
        listEquality.equals(e1?.ratings, e2?.ratings);
  }

  @override
  int hash(CompanyProfileRecord? e) => const ListEquality().hash([
        e?.cId,
        e?.cName,
        e?.cAddress,
        e?.cPhoto,
        e?.email,
        e?.logo,
        e?.userData,
        e?.ratings
      ]);

  @override
  bool isValidKey(Object? o) => o is CompanyProfileRecord;
}
