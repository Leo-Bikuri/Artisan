// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequestsRecord> _$requestsRecordSerializer =
    new _$RequestsRecordSerializer();

class _$RequestsRecordSerializer
    implements StructuredSerializer<RequestsRecord> {
  @override
  final Iterable<Type> types = const [RequestsRecord, _$RequestsRecord];
  @override
  final String wireName = 'RequestsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RequestsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.spId;
    if (value != null) {
      result
        ..add('spId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.distance;
    if (value != null) {
      result
        ..add('distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.declines;
    if (value != null) {
      result
        ..add('declines')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
  RequestsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequestsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'spId':
          result.spId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'declines':
          result.declines.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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

class _$RequestsRecord extends RequestsRecord {
  @override
  final DocumentReference<Object> spId;
  @override
  final DocumentReference<Object> userId;
  @override
  final String status;
  @override
  final String username;
  @override
  final double distance;
  @override
  final BuiltList<DocumentReference<Object>> declines;
  @override
  final DocumentReference<Object> reference;

  factory _$RequestsRecord([void Function(RequestsRecordBuilder) updates]) =>
      (new RequestsRecordBuilder()..update(updates))._build();

  _$RequestsRecord._(
      {this.spId,
      this.userId,
      this.status,
      this.username,
      this.distance,
      this.declines,
      this.reference})
      : super._();

  @override
  RequestsRecord rebuild(void Function(RequestsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestsRecordBuilder toBuilder() =>
      new RequestsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestsRecord &&
        spId == other.spId &&
        userId == other.userId &&
        status == other.status &&
        username == other.username &&
        distance == other.distance &&
        declines == other.declines &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, spId.hashCode), userId.hashCode),
                        status.hashCode),
                    username.hashCode),
                distance.hashCode),
            declines.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestsRecord')
          ..add('spId', spId)
          ..add('userId', userId)
          ..add('status', status)
          ..add('username', username)
          ..add('distance', distance)
          ..add('declines', declines)
          ..add('reference', reference))
        .toString();
  }
}

class RequestsRecordBuilder
    implements Builder<RequestsRecord, RequestsRecordBuilder> {
  _$RequestsRecord _$v;

  DocumentReference<Object> _spId;
  DocumentReference<Object> get spId => _$this._spId;
  set spId(DocumentReference<Object> spId) => _$this._spId = spId;

  DocumentReference<Object> _userId;
  DocumentReference<Object> get userId => _$this._userId;
  set userId(DocumentReference<Object> userId) => _$this._userId = userId;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  double _distance;
  double get distance => _$this._distance;
  set distance(double distance) => _$this._distance = distance;

  ListBuilder<DocumentReference<Object>> _declines;
  ListBuilder<DocumentReference<Object>> get declines =>
      _$this._declines ??= new ListBuilder<DocumentReference<Object>>();
  set declines(ListBuilder<DocumentReference<Object>> declines) =>
      _$this._declines = declines;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RequestsRecordBuilder() {
    RequestsRecord._initializeBuilder(this);
  }

  RequestsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spId = $v.spId;
      _userId = $v.userId;
      _status = $v.status;
      _username = $v.username;
      _distance = $v.distance;
      _declines = $v.declines?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestsRecord;
  }

  @override
  void update(void Function(RequestsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RequestsRecord build() {
    _$RequestsRecord _$result;
    try {
      _$result = _$v ??
          new _$RequestsRecord._(
              spId: spId,
              userId: userId,
              status: status,
              username: username,
              distance: distance,
              declines: _declines?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'declines';
        _declines?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RequestsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
