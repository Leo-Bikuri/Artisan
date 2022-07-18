import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'job_record.g.dart';

abstract class JobRecord implements Built<JobRecord, JobRecordBuilder> {
  static Serializer<JobRecord> get serializer => _$jobRecordSerializer;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  String get title;

  @nullable
  String get cost;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: 'service_provider')
  String get serviceProvider;

  @nullable
  @BuiltValueField(wireName: 'client_name')
  String get clientName;

  @nullable
  @BuiltValueField(wireName: 'client_location')
  LatLng get clientLocation;

  @nullable
  @BuiltValueField(wireName: 'client_phonenumber')
  String get clientPhonenumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(JobRecordBuilder builder) => builder
    ..title = ''
    ..cost = ''
    ..status = ''
    ..serviceProvider = ''
    ..clientName = ''
    ..clientPhonenumber = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('job')
          : FirebaseFirestore.instance.collectionGroup('job');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('job').doc();

  static Stream<JobRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<JobRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  JobRecord._();
  factory JobRecord([void Function(JobRecordBuilder) updates]) = _$JobRecord;

  static JobRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createJobRecordData({
  LatLng location,
  DateTime createdAt,
  String title,
  String cost,
  String status,
  String serviceProvider,
  String clientName,
  LatLng clientLocation,
  String clientPhonenumber,
}) =>
    serializers.toFirestore(
        JobRecord.serializer,
        JobRecord((j) => j
          ..location = location
          ..createdAt = createdAt
          ..title = title
          ..cost = cost
          ..status = status
          ..serviceProvider = serviceProvider
          ..clientName = clientName
          ..clientLocation = clientLocation
          ..clientPhonenumber = clientPhonenumber));
