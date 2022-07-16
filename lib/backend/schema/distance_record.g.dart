// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DistanceRecord> _$distanceRecordSerializer =
    new _$DistanceRecordSerializer();

class _$DistanceRecordSerializer
    implements StructuredSerializer<DistanceRecord> {
  @override
  final Iterable<Type> types = const [DistanceRecord, _$DistanceRecord];
  @override
  final String wireName = 'DistanceRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DistanceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.distance;
    if (value != null) {
      result
        ..add('distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  DistanceRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DistanceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$DistanceRecord extends DistanceRecord {
  @override
  final int value;
  @override
  final String distance;
  @override
  final DocumentReference<Object> reference;

  factory _$DistanceRecord([void Function(DistanceRecordBuilder) updates]) =>
      (new DistanceRecordBuilder()..update(updates)).build();

  _$DistanceRecord._({this.value, this.distance, this.reference}) : super._();

  @override
  DistanceRecord rebuild(void Function(DistanceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DistanceRecordBuilder toBuilder() =>
      new DistanceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DistanceRecord &&
        value == other.value &&
        distance == other.distance &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, value.hashCode), distance.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DistanceRecord')
          ..add('value', value)
          ..add('distance', distance)
          ..add('reference', reference))
        .toString();
  }
}

class DistanceRecordBuilder
    implements Builder<DistanceRecord, DistanceRecordBuilder> {
  _$DistanceRecord _$v;

  int _value;
  int get value => _$this._value;
  set value(int value) => _$this._value = value;

  String _distance;
  String get distance => _$this._distance;
  set distance(String distance) => _$this._distance = distance;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DistanceRecordBuilder() {
    DistanceRecord._initializeBuilder(this);
  }

  DistanceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _distance = $v.distance;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DistanceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DistanceRecord;
  }

  @override
  void update(void Function(DistanceRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DistanceRecord build() {
    final _$result = _$v ??
        new _$DistanceRecord._(
            value: value, distance: distance, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
