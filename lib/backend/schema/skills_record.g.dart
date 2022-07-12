// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SkillsRecord> _$skillsRecordSerializer =
    new _$SkillsRecordSerializer();

class _$SkillsRecordSerializer implements StructuredSerializer<SkillsRecord> {
  @override
  final Iterable<Type> types = const [SkillsRecord, _$SkillsRecord];
  @override
  final String wireName = 'SkillsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SkillsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.charge;
    if (value != null) {
      result
        ..add('charge')
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
  SkillsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'charge':
          result.charge = serializers.deserialize(value,
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

class _$SkillsRecord extends SkillsRecord {
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String charge;
  @override
  final DocumentReference<Object> reference;

  factory _$SkillsRecord([void Function(SkillsRecordBuilder) updates]) =>
      (new SkillsRecordBuilder()..update(updates)).build();

  _$SkillsRecord._({this.name, this.imageUrl, this.charge, this.reference})
      : super._();

  @override
  SkillsRecord rebuild(void Function(SkillsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillsRecordBuilder toBuilder() => new SkillsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillsRecord &&
        name == other.name &&
        imageUrl == other.imageUrl &&
        charge == other.charge &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), imageUrl.hashCode), charge.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SkillsRecord')
          ..add('name', name)
          ..add('imageUrl', imageUrl)
          ..add('charge', charge)
          ..add('reference', reference))
        .toString();
  }
}

class SkillsRecordBuilder
    implements Builder<SkillsRecord, SkillsRecordBuilder> {
  _$SkillsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _charge;
  String get charge => _$this._charge;
  set charge(String charge) => _$this._charge = charge;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SkillsRecordBuilder() {
    SkillsRecord._initializeBuilder(this);
  }

  SkillsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _imageUrl = $v.imageUrl;
      _charge = $v.charge;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillsRecord;
  }

  @override
  void update(void Function(SkillsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SkillsRecord build() {
    final _$result = _$v ??
        new _$SkillsRecord._(
            name: name,
            imageUrl: imageUrl,
            charge: charge,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
