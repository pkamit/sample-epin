import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reviewName" field.
  String? _reviewName;
  String get reviewName => _reviewName ?? '';
  bool hasReviewName() => _reviewName != null;

  // "reviewDescription" field.
  String? _reviewDescription;
  String get reviewDescription => _reviewDescription ?? '';
  bool hasReviewDescription() => _reviewDescription != null;

  // "userRef_Reviewer" field.
  DocumentReference? _userRefReviewer;
  DocumentReference? get userRefReviewer => _userRefReviewer;
  bool hasUserRefReviewer() => _userRefReviewer != null;

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "sellerRef" field.
  DocumentReference? _sellerRef;
  DocumentReference? get sellerRef => _sellerRef;
  bool hasSellerRef() => _sellerRef != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _reviewName = snapshotData['reviewName'] as String?;
    _reviewDescription = snapshotData['reviewDescription'] as String?;
    _userRefReviewer = snapshotData['userRef_Reviewer'] as DocumentReference?;
    _productRef = snapshotData['productRef'] as DocumentReference?;
    _dateCreated = snapshotData['dateCreated'] as DateTime?;
    _rating = castToType<double>(snapshotData['rating']);
    _sellerRef = snapshotData['sellerRef'] as DocumentReference?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  String? reviewName,
  String? reviewDescription,
  DocumentReference? userRefReviewer,
  DocumentReference? productRef,
  DateTime? dateCreated,
  double? rating,
  DocumentReference? sellerRef,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviewName': reviewName,
      'reviewDescription': reviewDescription,
      'userRef_Reviewer': userRefReviewer,
      'productRef': productRef,
      'dateCreated': dateCreated,
      'rating': rating,
      'sellerRef': sellerRef,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.reviewName == e2?.reviewName &&
        e1?.reviewDescription == e2?.reviewDescription &&
        e1?.userRefReviewer == e2?.userRefReviewer &&
        e1?.productRef == e2?.productRef &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.rating == e2?.rating &&
        e1?.sellerRef == e2?.sellerRef &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.reviewName,
        e?.reviewDescription,
        e?.userRefReviewer,
        e?.productRef,
        e?.dateCreated,
        e?.rating,
        e?.sellerRef,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
