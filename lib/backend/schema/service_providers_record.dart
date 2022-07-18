import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'service_providers_record.g.dart';

abstract class ServiceProvidersRecord
    implements Built<ServiceProvidersRecord, ServiceProvidersRecordBuilder> {
  static Serializer<ServiceProvidersRecord> get serializer =>
      _$serviceProvidersRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get uid;

  @nullable
  LatLng get location;

  @nullable
  String get skill;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'identification_number')
  String get identificationNumber;

  @nullable
  String get dob;

  @nullable
  String get gender;

  @nullable
  int get rating;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ServiceProvidersRecordBuilder builder) =>
      builder
        ..email = ''
        ..password = ''
        ..photoUrl = ''
        ..phoneNumber = ''
        ..uid = ''
        ..skill = ''
        ..displayName = ''
        ..identificationNumber = ''
        ..dob = ''
        ..gender = ''
        ..rating = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('service-providers');

  static Stream<ServiceProvidersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ServiceProvidersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ServiceProvidersRecord._();
  factory ServiceProvidersRecord(
          [void Function(ServiceProvidersRecordBuilder) updates]) =
      _$ServiceProvidersRecord;

  static ServiceProvidersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createServiceProvidersRecordData({
  String email,
  String password,
  String photoUrl,
  DateTime createdTime,
  String phoneNumber,
  String uid,
  LatLng location,
  String skill,
  String displayName,
  String identificationNumber,
  String dob,
  String gender,
  int rating,
}) =>
    serializers.toFirestore(
        ServiceProvidersRecord.serializer,
        ServiceProvidersRecord((s) => s
          ..email = email
          ..password = password
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..uid = uid
          ..location = location
          ..skill = skill
          ..displayName = displayName
          ..identificationNumber = identificationNumber
          ..dob = dob
          ..gender = gender
          ..rating = rating));
