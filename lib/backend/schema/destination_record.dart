import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'destination_record.g.dart';

abstract class DestinationRecord
    implements Built<DestinationRecord, DestinationRecordBuilder> {
  static Serializer<DestinationRecord> get serializer =>
      _$destinationRecordSerializer;

  @nullable
  String get address;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(DestinationRecordBuilder builder) =>
      builder..address = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('destination')
          : FirebaseFirestore.instance.collectionGroup('destination');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('destination').doc();

  static Stream<DestinationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DestinationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DestinationRecord._();
  factory DestinationRecord([void Function(DestinationRecordBuilder) updates]) =
      _$DestinationRecord;

  static DestinationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDestinationRecordData({
  String address,
  LatLng location,
}) =>
    serializers.toFirestore(
        DestinationRecord.serializer,
        DestinationRecord((d) => d
          ..address = address
          ..location = location));
