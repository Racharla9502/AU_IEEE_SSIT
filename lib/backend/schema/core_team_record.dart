import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoreTeamRecord extends FirestoreRecord {
  CoreTeamRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "mobileno" field.
  String? _mobileno;
  String get mobileno => _mobileno ?? '';
  bool hasMobileno() => _mobileno != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "linkedin" field.
  String? _linkedin;
  String get linkedin => _linkedin ?? '';
  bool hasLinkedin() => _linkedin != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "github" field.
  String? _github;
  String get github => _github ?? '';
  bool hasGithub() => _github != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "about_me" field.
  String? _aboutMe;
  String get aboutMe => _aboutMe ?? '';
  bool hasAboutMe() => _aboutMe != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _role = snapshotData['role'] as String?;
    _mobileno = snapshotData['mobileno'] as String?;
    _location = snapshotData['location'] as String?;
    _linkedin = snapshotData['linkedin'] as String?;
    _email = snapshotData['email'] as String?;
    _github = snapshotData['github'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _designation = snapshotData['designation'] as String?;
    _department = snapshotData['department'] as String?;
    _aboutMe = snapshotData['about_me'] as String?;
    _image = snapshotData['image'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _year = snapshotData['year'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('core_team');

  static Stream<CoreTeamRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoreTeamRecord.fromSnapshot(s));

  static Future<CoreTeamRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoreTeamRecord.fromSnapshot(s));

  static CoreTeamRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoreTeamRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoreTeamRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoreTeamRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoreTeamRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoreTeamRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoreTeamRecordData({
  String? name,
  String? role,
  String? mobileno,
  String? location,
  String? linkedin,
  String? email,
  String? github,
  String? instagram,
  String? designation,
  String? department,
  String? aboutMe,
  String? image,
  String? facebook,
  String? year,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'role': role,
      'mobileno': mobileno,
      'location': location,
      'linkedin': linkedin,
      'email': email,
      'github': github,
      'instagram': instagram,
      'designation': designation,
      'department': department,
      'about_me': aboutMe,
      'image': image,
      'facebook': facebook,
      'year': year,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoreTeamRecordDocumentEquality implements Equality<CoreTeamRecord> {
  const CoreTeamRecordDocumentEquality();

  @override
  bool equals(CoreTeamRecord? e1, CoreTeamRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.role == e2?.role &&
        e1?.mobileno == e2?.mobileno &&
        e1?.location == e2?.location &&
        e1?.linkedin == e2?.linkedin &&
        e1?.email == e2?.email &&
        e1?.github == e2?.github &&
        e1?.instagram == e2?.instagram &&
        e1?.designation == e2?.designation &&
        e1?.department == e2?.department &&
        e1?.aboutMe == e2?.aboutMe &&
        e1?.image == e2?.image &&
        e1?.facebook == e2?.facebook &&
        e1?.year == e2?.year;
  }

  @override
  int hash(CoreTeamRecord? e) => const ListEquality().hash([
        e?.name,
        e?.role,
        e?.mobileno,
        e?.location,
        e?.linkedin,
        e?.email,
        e?.github,
        e?.instagram,
        e?.designation,
        e?.department,
        e?.aboutMe,
        e?.image,
        e?.facebook,
        e?.year
      ]);

  @override
  bool isValidKey(Object? o) => o is CoreTeamRecord;
}
