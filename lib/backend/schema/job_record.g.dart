// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobRecord> _$jobRecordSerializer = new _$JobRecordSerializer();

class _$JobRecordSerializer implements StructuredSerializer<JobRecord> {
  @override
  final Iterable<Type> types = const [JobRecord, _$JobRecord];
  @override
  final String wireName = 'JobRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, JobRecord object,
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cost;
    if (value != null) {
      result
        ..add('cost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceProvider;
    if (value != null) {
      result
        ..add('service_provider')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientName;
    if (value != null) {
      result
        ..add('client_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientLocation;
    if (value != null) {
      result
        ..add('client_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.clientPhonenumber;
    if (value != null) {
      result
        ..add('client_phonenumber')
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
  JobRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobRecordBuilder();

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
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cost':
          result.cost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'service_provider':
          result.serviceProvider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_name':
          result.clientName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_location':
          result.clientLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'client_phonenumber':
          result.clientPhonenumber = serializers.deserialize(value,
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

class _$JobRecord extends JobRecord {
  @override
  final LatLng location;
  @override
  final DateTime createdAt;
  @override
  final String title;
  @override
  final String cost;
  @override
  final String status;
  @override
  final String serviceProvider;
  @override
  final String clientName;
  @override
  final LatLng clientLocation;
  @override
  final String clientPhonenumber;
  @override
  final DocumentReference<Object> reference;

  factory _$JobRecord([void Function(JobRecordBuilder) updates]) =>
      (new JobRecordBuilder()..update(updates))._build();

  _$JobRecord._(
      {this.location,
      this.createdAt,
      this.title,
      this.cost,
      this.status,
      this.serviceProvider,
      this.clientName,
      this.clientLocation,
      this.clientPhonenumber,
      this.reference})
      : super._();

  @override
  JobRecord rebuild(void Function(JobRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobRecordBuilder toBuilder() => new JobRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobRecord &&
        location == other.location &&
        createdAt == other.createdAt &&
        title == other.title &&
        cost == other.cost &&
        status == other.status &&
        serviceProvider == other.serviceProvider &&
        clientName == other.clientName &&
        clientLocation == other.clientLocation &&
        clientPhonenumber == other.clientPhonenumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, location.hashCode),
                                        createdAt.hashCode),
                                    title.hashCode),
                                cost.hashCode),
                            status.hashCode),
                        serviceProvider.hashCode),
                    clientName.hashCode),
                clientLocation.hashCode),
            clientPhonenumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobRecord')
          ..add('location', location)
          ..add('createdAt', createdAt)
          ..add('title', title)
          ..add('cost', cost)
          ..add('status', status)
          ..add('serviceProvider', serviceProvider)
          ..add('clientName', clientName)
          ..add('clientLocation', clientLocation)
          ..add('clientPhonenumber', clientPhonenumber)
          ..add('reference', reference))
        .toString();
  }
}

class JobRecordBuilder implements Builder<JobRecord, JobRecordBuilder> {
  _$JobRecord _$v;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _cost;
  String get cost => _$this._cost;
  set cost(String cost) => _$this._cost = cost;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _serviceProvider;
  String get serviceProvider => _$this._serviceProvider;
  set serviceProvider(String serviceProvider) =>
      _$this._serviceProvider = serviceProvider;

  String _clientName;
  String get clientName => _$this._clientName;
  set clientName(String clientName) => _$this._clientName = clientName;

  LatLng _clientLocation;
  LatLng get clientLocation => _$this._clientLocation;
  set clientLocation(LatLng clientLocation) =>
      _$this._clientLocation = clientLocation;

  String _clientPhonenumber;
  String get clientPhonenumber => _$this._clientPhonenumber;
  set clientPhonenumber(String clientPhonenumber) =>
      _$this._clientPhonenumber = clientPhonenumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  JobRecordBuilder() {
    JobRecord._initializeBuilder(this);
  }

  JobRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _createdAt = $v.createdAt;
      _title = $v.title;
      _cost = $v.cost;
      _status = $v.status;
      _serviceProvider = $v.serviceProvider;
      _clientName = $v.clientName;
      _clientLocation = $v.clientLocation;
      _clientPhonenumber = $v.clientPhonenumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobRecord;
  }

  @override
  void update(void Function(JobRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  JobRecord build() => _build();

  _$JobRecord _build() {
    final _$result = _$v ??
        new _$JobRecord._(
            location: location,
            createdAt: createdAt,
            title: title,
            cost: cost,
            status: status,
            serviceProvider: serviceProvider,
            clientName: clientName,
            clientLocation: clientLocation,
            clientPhonenumber: clientPhonenumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
