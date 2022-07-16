import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'distance_record.g.dart';

abstract class DistanceRecord
    implements Built<DistanceRecord, DistanceRecordBuilder> {
  static Serializer<DistanceRecord> get serializer =>
      _$distanceRecordSerializer;

  @nullable
  int get value;

  @nullable
  String get distance;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(DistanceRecordBuilder builder) => builder
    ..value = 0
    ..distance = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('distance')
          : FirebaseFirestore.instance.collectionGroup('distance');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('distance').doc();

  static Stream<DistanceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DistanceRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DistanceRecord._();
  factory DistanceRecord([void Function(DistanceRecordBuilder) updates]) =
      _$DistanceRecord;

  static DistanceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDistanceRecordData({
  int value,
  String distance,
}) =>
    serializers.toFirestore(
        DistanceRecord.serializer,
        DistanceRecord((d) => d
          ..value = value
          ..distance = distance));
