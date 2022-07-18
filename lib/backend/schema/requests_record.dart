import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'requests_record.g.dart';

abstract class RequestsRecord
    implements Built<RequestsRecord, RequestsRecordBuilder> {
  static Serializer<RequestsRecord> get serializer =>
      _$requestsRecordSerializer;

  @nullable
  DocumentReference get spId;

  @nullable
  DocumentReference get userId;

  @nullable
  String get status;

  @nullable
  String get username;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RequestsRecordBuilder builder) => builder
    ..status = ''
    ..username = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RequestsRecord._();
  factory RequestsRecord([void Function(RequestsRecordBuilder) updates]) =
      _$RequestsRecord;

  static RequestsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRequestsRecordData({
  DocumentReference spId,
  DocumentReference userId,
  String status,
  String username,
}) =>
    serializers.toFirestore(
        RequestsRecord.serializer,
        RequestsRecord((r) => r
          ..spId = spId
          ..userId = userId
          ..status = status
          ..username = username));
