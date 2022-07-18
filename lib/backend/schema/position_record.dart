import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'position_record.g.dart';

abstract class PositionRecord
    implements Built<PositionRecord, PositionRecordBuilder> {
  static Serializer<PositionRecord> get serializer =>
      _$positionRecordSerializer;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(PositionRecordBuilder builder) => builder;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('position')
          : FirebaseFirestore.instance.collectionGroup('position');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('position').doc();

  static Stream<PositionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PositionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PositionRecord._();
  factory PositionRecord([void Function(PositionRecordBuilder) updates]) =
      _$PositionRecord;

  static PositionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPositionRecordData({
  LatLng location,
}) =>
    serializers.toFirestore(PositionRecord.serializer,
        PositionRecord((p) => p..location = location));
