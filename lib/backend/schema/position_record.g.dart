// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PositionRecord> _$positionRecordSerializer =
    new _$PositionRecordSerializer();

class _$PositionRecordSerializer
    implements StructuredSerializer<PositionRecord> {
  @override
  final Iterable<Type> types = const [PositionRecord, _$PositionRecord];
  @override
  final String wireName = 'PositionRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PositionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  PositionRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PositionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
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

class _$PositionRecord extends PositionRecord {
  @override
  final LatLng location;
  @override
  final DocumentReference<Object> reference;

  factory _$PositionRecord([void Function(PositionRecordBuilder) updates]) =>
      (new PositionRecordBuilder()..update(updates))._build();

  _$PositionRecord._({this.location, this.reference}) : super._();

  @override
  PositionRecord rebuild(void Function(PositionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PositionRecordBuilder toBuilder() =>
      new PositionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PositionRecord &&
        location == other.location &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, location.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PositionRecord')
          ..add('location', location)
          ..add('reference', reference))
        .toString();
  }
}

class PositionRecordBuilder
    implements Builder<PositionRecord, PositionRecordBuilder> {
  _$PositionRecord _$v;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PositionRecordBuilder() {
    PositionRecord._initializeBuilder(this);
  }

  PositionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PositionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PositionRecord;
  }

  @override
  void update(void Function(PositionRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  PositionRecord build() => _build();

  _$PositionRecord _build() {
    final _$result =
        _$v ?? new _$PositionRecord._(location: location, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
