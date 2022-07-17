// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_providers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceProvidersRecord> _$serviceProvidersRecordSerializer =
    new _$ServiceProvidersRecordSerializer();

class _$ServiceProvidersRecordSerializer
    implements StructuredSerializer<ServiceProvidersRecord> {
  @override
  final Iterable<Type> types = const [
    ServiceProvidersRecord,
    _$ServiceProvidersRecord
  ];
  @override
  final String wireName = 'ServiceProvidersRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ServiceProvidersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.skill;
    if (value != null) {
      result
        ..add('skill')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.identificationNumber;
    if (value != null) {
      result
        ..add('identification_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ServiceProvidersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceProvidersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'skill':
          result.skill = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'identification_number':
          result.identificationNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$ServiceProvidersRecord extends ServiceProvidersRecord {
  @override
  final String email;
  @override
  final String password;
  @override
  final String photoUrl;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String uid;
  @override
  final LatLng location;
  @override
  final String skill;
  @override
  final String displayName;
  @override
  final String identificationNumber;
  @override
  final String dob;
  @override
  final String gender;
  @override
  final int rating;
  @override
  final DocumentReference<Object> reference;

  factory _$ServiceProvidersRecord(
          [void Function(ServiceProvidersRecordBuilder) updates]) =>
      (new ServiceProvidersRecordBuilder()..update(updates)).build();

  _$ServiceProvidersRecord._(
      {this.email,
      this.password,
      this.photoUrl,
      this.createdTime,
      this.phoneNumber,
      this.uid,
      this.location,
      this.skill,
      this.displayName,
      this.identificationNumber,
      this.dob,
      this.gender,
      this.rating,
      this.reference})
      : super._();

  @override
  ServiceProvidersRecord rebuild(
          void Function(ServiceProvidersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceProvidersRecordBuilder toBuilder() =>
      new ServiceProvidersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceProvidersRecord &&
        email == other.email &&
        password == other.password &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        uid == other.uid &&
        location == other.location &&
        skill == other.skill &&
        displayName == other.displayName &&
        identificationNumber == other.identificationNumber &&
        dob == other.dob &&
        gender == other.gender &&
        rating == other.rating &&
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, email.hashCode),
                                                        password.hashCode),
                                                    photoUrl.hashCode),
                                                createdTime.hashCode),
                                            phoneNumber.hashCode),
                                        uid.hashCode),
                                    location.hashCode),
                                skill.hashCode),
                            displayName.hashCode),
                        identificationNumber.hashCode),
                    dob.hashCode),
                gender.hashCode),
            rating.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceProvidersRecord')
          ..add('email', email)
          ..add('password', password)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('uid', uid)
          ..add('location', location)
          ..add('skill', skill)
          ..add('displayName', displayName)
          ..add('identificationNumber', identificationNumber)
          ..add('dob', dob)
          ..add('gender', gender)
          ..add('rating', rating)
          ..add('reference', reference))
        .toString();
  }
}

class ServiceProvidersRecordBuilder
    implements Builder<ServiceProvidersRecord, ServiceProvidersRecordBuilder> {
  _$ServiceProvidersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  String _skill;
  String get skill => _$this._skill;
  set skill(String skill) => _$this._skill = skill;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _identificationNumber;
  String get identificationNumber => _$this._identificationNumber;
  set identificationNumber(String identificationNumber) =>
      _$this._identificationNumber = identificationNumber;

  String _dob;
  String get dob => _$this._dob;
  set dob(String dob) => _$this._dob = dob;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ServiceProvidersRecordBuilder() {
    ServiceProvidersRecord._initializeBuilder(this);
  }

  ServiceProvidersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _uid = $v.uid;
      _location = $v.location;
      _skill = $v.skill;
      _displayName = $v.displayName;
      _identificationNumber = $v.identificationNumber;
      _dob = $v.dob;
      _gender = $v.gender;
      _rating = $v.rating;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceProvidersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceProvidersRecord;
  }

  @override
  void update(void Function(ServiceProvidersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceProvidersRecord build() {
    final _$result = _$v ??
        new _$ServiceProvidersRecord._(
            email: email,
            password: password,
            photoUrl: photoUrl,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            uid: uid,
            location: location,
            skill: skill,
            displayName: displayName,
            identificationNumber: identificationNumber,
            dob: dob,
            gender: gender,
            rating: rating,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
