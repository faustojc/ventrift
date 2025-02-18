// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProfilesTable extends Profiles with drift.TableInfo<$ProfilesTable, Profile> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;

  $ProfilesTable(this.attachedDatabase, [this._alias]);

  static const drift.VerificationMeta _idMeta = const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<String> id =
      drift.GeneratedColumn<String>('id', aliasedName, false, type: drift.DriftSqlType.string, requiredDuringInsert: true, $customConstraints: 'PRIMARY KEY NOT NULL');
  static const drift.VerificationMeta _usernameMeta = const drift.VerificationMeta('username');
  @override
  late final drift.GeneratedColumn<String> username = drift.GeneratedColumn<String>('username', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: drift.DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: drift.GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const drift.VerificationMeta _fullNameMeta = const drift.VerificationMeta('fullName');
  @override
  late final drift.GeneratedColumn<String> fullName = drift.GeneratedColumn<String>('full_name', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 120), type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _avatarUrlMeta = const drift.VerificationMeta('avatarUrl');
  @override
  late final drift.GeneratedColumn<String> avatarUrl = drift.GeneratedColumn<String>('avatar_url', aliasedName, true, type: drift.DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _bioMeta = const drift.VerificationMeta('bio');
  @override
  late final drift.GeneratedColumn<String> bio = drift.GeneratedColumn<String>('bio', aliasedName, true, type: drift.DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta = const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());
  static const drift.VerificationMeta _updatedAtMeta = const drift.VerificationMeta('updatedAt');
  @override
  late final drift.GeneratedColumn<DateTime> updatedAt =
      drift.GeneratedColumn<DateTime>('updated_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());

  @override
  List<drift.GeneratedColumn> get $columns => [id, username, fullName, avatarUrl, bio, createdAt, updatedAt];

  @override
  String get aliasedName => _alias ?? actualTableName;

  @override
  String get actualTableName => $name;
  static const String $name = 'profiles';

  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Profile> instance, {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta, username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta, fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta, avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));
    }
    if (data.containsKey('bio')) {
      context.handle(_bioMeta, bio.isAcceptableOrUnknown(data['bio']!, _bioMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta, updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};

  @override
  Profile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Profile(
      id: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}id'])!,
      username: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}username'])!,
      fullName: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      avatarUrl: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}avatar_url']),
      bio: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}bio']),
      createdAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $ProfilesTable createAlias(String alias) {
    return $ProfilesTable(attachedDatabase, alias);
  }
}

class Profile extends drift.DataClass implements drift.Insertable<Profile> {
  final String id;
  final String username;
  final String fullName;
  final String? avatarUrl;
  final String? bio;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Profile({required this.id, required this.username, required this.fullName, this.avatarUrl, this.bio, required this.createdAt, required this.updatedAt});

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<String>(id);
    map['username'] = drift.Variable<String>(username);
    map['full_name'] = drift.Variable<String>(fullName);
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = drift.Variable<String>(avatarUrl);
    }
    if (!nullToAbsent || bio != null) {
      map['bio'] = drift.Variable<String>(bio);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    map['updated_at'] = drift.Variable<DateTime>(updatedAt);
    return map;
  }

  ProfilesCompanion toCompanion(bool nullToAbsent) {
    return ProfilesCompanion(
      id: drift.Value(id),
      username: drift.Value(username),
      fullName: drift.Value(fullName),
      avatarUrl: avatarUrl == null && nullToAbsent ? const drift.Value.absent() : drift.Value(avatarUrl),
      bio: bio == null && nullToAbsent ? const drift.Value.absent() : drift.Value(bio),
      createdAt: drift.Value(createdAt),
      updatedAt: drift.Value(updatedAt),
    );
  }

  factory Profile.fromJson(Map<String, dynamic> json, {drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Profile(
      id: serializer.fromJson<String>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      fullName: serializer.fromJson<String>(json['fullName']),
      avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),
      bio: serializer.fromJson<String?>(json['bio']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }

  @override
  Map<String, dynamic> toJson({drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'username': serializer.toJson<String>(username),
      'fullName': serializer.toJson<String>(fullName),
      'avatarUrl': serializer.toJson<String?>(avatarUrl),
      'bio': serializer.toJson<String?>(bio),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Profile copyWith(
          {String? id,
          String? username,
          String? fullName,
          drift.Value<String?> avatarUrl = const drift.Value.absent(),
          drift.Value<String?> bio = const drift.Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Profile(
        id: id ?? this.id,
        username: username ?? this.username,
        fullName: fullName ?? this.fullName,
        avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
        bio: bio.present ? bio.value : this.bio,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Profile copyWithCompanion(ProfilesCompanion data) {
    return Profile(
      id: data.id.present ? data.id.value : this.id,
      username: data.username.present ? data.username.value : this.username,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,
      bio: data.bio.present ? data.bio.value : this.bio,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Profile(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('fullName: $fullName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('bio: $bio, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, username, fullName, avatarUrl, bio, createdAt, updatedAt);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Profile &&
          other.id == this.id &&
          other.username == this.username &&
          other.fullName == this.fullName &&
          other.avatarUrl == this.avatarUrl &&
          other.bio == this.bio &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ProfilesCompanion extends drift.UpdateCompanion<Profile> {
  final drift.Value<String> id;
  final drift.Value<String> username;
  final drift.Value<String> fullName;
  final drift.Value<String?> avatarUrl;
  final drift.Value<String?> bio;
  final drift.Value<DateTime> createdAt;
  final drift.Value<DateTime> updatedAt;
  final drift.Value<int> rowid;

  const ProfilesCompanion({
    this.id = const drift.Value.absent(),
    this.username = const drift.Value.absent(),
    this.fullName = const drift.Value.absent(),
    this.avatarUrl = const drift.Value.absent(),
    this.bio = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });

  ProfilesCompanion.insert({
    required String id,
    required String username,
    required String fullName,
    this.avatarUrl = const drift.Value.absent(),
    this.bio = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  })  : id = drift.Value(id),
        username = drift.Value(username),
        fullName = drift.Value(fullName);

  static drift.Insertable<Profile> custom({
    drift.Expression<String>? id,
    drift.Expression<String>? username,
    drift.Expression<String>? fullName,
    drift.Expression<String>? avatarUrl,
    drift.Expression<String>? bio,
    drift.Expression<DateTime>? createdAt,
    drift.Expression<DateTime>? updatedAt,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (fullName != null) 'full_name': fullName,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (bio != null) 'bio': bio,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfilesCompanion copyWith(
      {drift.Value<String>? id,
      drift.Value<String>? username,
      drift.Value<String>? fullName,
      drift.Value<String?>? avatarUrl,
      drift.Value<String?>? bio,
      drift.Value<DateTime>? createdAt,
      drift.Value<DateTime>? updatedAt,
      drift.Value<int>? rowid}) {
    return ProfilesCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      fullName: fullName ?? this.fullName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      bio: bio ?? this.bio,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<String>(id.value);
    }
    if (username.present) {
      map['username'] = drift.Variable<String>(username.value);
    }
    if (fullName.present) {
      map['full_name'] = drift.Variable<String>(fullName.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = drift.Variable<String>(avatarUrl.value);
    }
    if (bio.present) {
      map['bio'] = drift.Variable<String>(bio.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = drift.Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfilesCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('fullName: $fullName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('bio: $bio, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PlacesTable extends Places with drift.TableInfo<$PlacesTable, Place> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;

  $PlacesTable(this.attachedDatabase, [this._alias]);

  static const drift.VerificationMeta _idMeta = const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<String> id = drift.GeneratedColumn<String>('id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, $customConstraints: 'PRIMARY KEY NOT NULL', clientDefault: () => Ulid().toString());
  static const drift.VerificationMeta _placeNameMeta = const drift.VerificationMeta('placeName');
  @override
  late final drift.GeneratedColumn<String> placeName = drift.GeneratedColumn<String>('place_name', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 255), type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _addressMeta = const drift.VerificationMeta('address');
  @override
  late final drift.GeneratedColumn<String> address = drift.GeneratedColumn<String>('address', aliasedName, false, type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _cityMeta = const drift.VerificationMeta('city');
  @override
  late final drift.GeneratedColumn<String> city = drift.GeneratedColumn<String>('city', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 100), type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _stateMeta = const drift.VerificationMeta('state');
  @override
  late final drift.GeneratedColumn<String> state = drift.GeneratedColumn<String>('state', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 100), type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _countryMeta = const drift.VerificationMeta('country');
  @override
  late final drift.GeneratedColumn<String> country = drift.GeneratedColumn<String>('country', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 100), type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _latitudeMeta = const drift.VerificationMeta('latitude');
  @override
  late final drift.GeneratedColumn<double> latitude = drift.GeneratedColumn<double>('latitude', aliasedName, false, type: drift.DriftSqlType.double, requiredDuringInsert: true);
  static const drift.VerificationMeta _longitudeMeta = const drift.VerificationMeta('longitude');
  @override
  late final drift.GeneratedColumn<double> longitude = drift.GeneratedColumn<double>('longitude', aliasedName, false, type: drift.DriftSqlType.double, requiredDuringInsert: true);
  static const drift.VerificationMeta _zipCodeMeta = const drift.VerificationMeta('zipCode');
  @override
  late final drift.GeneratedColumn<String> zipCode = drift.GeneratedColumn<String>('zip_code', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 10), type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _placeTypesJsonMeta = const drift.VerificationMeta('placeTypesJson');
  @override
  late final drift.GeneratedColumn<String> placeTypesJson =
      drift.GeneratedColumn<String>('place_types', aliasedName, true, type: drift.DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _phoneNumberMeta = const drift.VerificationMeta('phoneNumber');
  @override
  late final drift.GeneratedColumn<String> phoneNumber = drift.GeneratedColumn<String>('phone_number', aliasedName, true,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 20), type: drift.DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _websiteMeta = const drift.VerificationMeta('website');
  @override
  late final drift.GeneratedColumn<String> website = drift.GeneratedColumn<String>('website', aliasedName, true, type: drift.DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta = const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());
  static const drift.VerificationMeta _updatedAtMeta = const drift.VerificationMeta('updatedAt');
  @override
  late final drift.GeneratedColumn<DateTime> updatedAt =
      drift.GeneratedColumn<DateTime>('updated_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());

  @override
  List<drift.GeneratedColumn> get $columns =>
      [id, placeName, address, city, state, country, latitude, longitude, zipCode, placeTypesJson, phoneNumber, website, createdAt, updatedAt];

  @override
  String get aliasedName => _alias ?? actualTableName;

  @override
  String get actualTableName => $name;
  static const String $name = 'places';

  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Place> instance, {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('place_name')) {
      context.handle(_placeNameMeta, placeName.isAcceptableOrUnknown(data['place_name']!, _placeNameMeta));
    } else if (isInserting) {
      context.missing(_placeNameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta, address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('city')) {
      context.handle(_cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('state')) {
      context.handle(_stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta, country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta, latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta, longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('zip_code')) {
      context.handle(_zipCodeMeta, zipCode.isAcceptableOrUnknown(data['zip_code']!, _zipCodeMeta));
    } else if (isInserting) {
      context.missing(_zipCodeMeta);
    }
    if (data.containsKey('place_types')) {
      context.handle(_placeTypesJsonMeta, placeTypesJson.isAcceptableOrUnknown(data['place_types']!, _placeTypesJsonMeta));
    }
    if (data.containsKey('phone_number')) {
      context.handle(_phoneNumberMeta, phoneNumber.isAcceptableOrUnknown(data['phone_number']!, _phoneNumberMeta));
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta, website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta, updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};

  @override
  Place map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Place(
      id: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}id'])!,
      placeName: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}place_name'])!,
      address: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}address'])!,
      city: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}city'])!,
      state: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}state'])!,
      country: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}country'])!,
      latitude: attachedDatabase.typeMapping.read(drift.DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping.read(drift.DriftSqlType.double, data['${effectivePrefix}longitude'])!,
      zipCode: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}zip_code'])!,
      placeTypesJson: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}place_types']),
      phoneNumber: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}phone_number']),
      website: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}website']),
      createdAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $PlacesTable createAlias(String alias) {
    return $PlacesTable(attachedDatabase, alias);
  }
}

class Place extends drift.DataClass implements drift.Insertable<Place> {
  final String id;
  final String placeName;
  final String address;
  final String city;
  final String state;
  final String country;
  final double latitude;
  final double longitude;
  final String zipCode;
  final String? placeTypesJson;
  final String? phoneNumber;
  final String? website;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Place(
      {required this.id,
      required this.placeName,
      required this.address,
      required this.city,
      required this.state,
      required this.country,
      required this.latitude,
      required this.longitude,
      required this.zipCode,
      this.placeTypesJson,
      this.phoneNumber,
      this.website,
      required this.createdAt,
      required this.updatedAt});

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<String>(id);
    map['place_name'] = drift.Variable<String>(placeName);
    map['address'] = drift.Variable<String>(address);
    map['city'] = drift.Variable<String>(city);
    map['state'] = drift.Variable<String>(state);
    map['country'] = drift.Variable<String>(country);
    map['latitude'] = drift.Variable<double>(latitude);
    map['longitude'] = drift.Variable<double>(longitude);
    map['zip_code'] = drift.Variable<String>(zipCode);
    if (!nullToAbsent || placeTypesJson != null) {
      map['place_types'] = drift.Variable<String>(placeTypesJson);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = drift.Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || website != null) {
      map['website'] = drift.Variable<String>(website);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    map['updated_at'] = drift.Variable<DateTime>(updatedAt);
    return map;
  }

  PlacesCompanion toCompanion(bool nullToAbsent) {
    return PlacesCompanion(
      id: drift.Value(id),
      placeName: drift.Value(placeName),
      address: drift.Value(address),
      city: drift.Value(city),
      state: drift.Value(state),
      country: drift.Value(country),
      latitude: drift.Value(latitude),
      longitude: drift.Value(longitude),
      zipCode: drift.Value(zipCode),
      placeTypesJson: placeTypesJson == null && nullToAbsent ? const drift.Value.absent() : drift.Value(placeTypesJson),
      phoneNumber: phoneNumber == null && nullToAbsent ? const drift.Value.absent() : drift.Value(phoneNumber),
      website: website == null && nullToAbsent ? const drift.Value.absent() : drift.Value(website),
      createdAt: drift.Value(createdAt),
      updatedAt: drift.Value(updatedAt),
    );
  }

  factory Place.fromJson(Map<String, dynamic> json, {drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Place(
      id: serializer.fromJson<String>(json['id']),
      placeName: serializer.fromJson<String>(json['placeName']),
      address: serializer.fromJson<String>(json['address']),
      city: serializer.fromJson<String>(json['city']),
      state: serializer.fromJson<String>(json['state']),
      country: serializer.fromJson<String>(json['country']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      zipCode: serializer.fromJson<String>(json['zipCode']),
      placeTypesJson: serializer.fromJson<String?>(json['placeTypesJson']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      website: serializer.fromJson<String?>(json['website']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }

  @override
  Map<String, dynamic> toJson({drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'placeName': serializer.toJson<String>(placeName),
      'address': serializer.toJson<String>(address),
      'city': serializer.toJson<String>(city),
      'state': serializer.toJson<String>(state),
      'country': serializer.toJson<String>(country),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'zipCode': serializer.toJson<String>(zipCode),
      'placeTypesJson': serializer.toJson<String?>(placeTypesJson),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'website': serializer.toJson<String?>(website),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Place copyWith(
          {String? id,
          String? placeName,
          String? address,
          String? city,
          String? state,
          String? country,
          double? latitude,
          double? longitude,
          String? zipCode,
          drift.Value<String?> placeTypesJson = const drift.Value.absent(),
          drift.Value<String?> phoneNumber = const drift.Value.absent(),
          drift.Value<String?> website = const drift.Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Place(
        id: id ?? this.id,
        placeName: placeName ?? this.placeName,
        address: address ?? this.address,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        zipCode: zipCode ?? this.zipCode,
        placeTypesJson: placeTypesJson.present ? placeTypesJson.value : this.placeTypesJson,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
        website: website.present ? website.value : this.website,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Place copyWithCompanion(PlacesCompanion data) {
    return Place(
      id: data.id.present ? data.id.value : this.id,
      placeName: data.placeName.present ? data.placeName.value : this.placeName,
      address: data.address.present ? data.address.value : this.address,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      country: data.country.present ? data.country.value : this.country,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      zipCode: data.zipCode.present ? data.zipCode.value : this.zipCode,
      placeTypesJson: data.placeTypesJson.present ? data.placeTypesJson.value : this.placeTypesJson,
      phoneNumber: data.phoneNumber.present ? data.phoneNumber.value : this.phoneNumber,
      website: data.website.present ? data.website.value : this.website,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Place(')
          ..write('id: $id, ')
          ..write('placeName: $placeName, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('zipCode: $zipCode, ')
          ..write('placeTypesJson: $placeTypesJson, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('website: $website, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, placeName, address, city, state, country, latitude, longitude, zipCode, placeTypesJson, phoneNumber, website, createdAt, updatedAt);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Place &&
          other.id == this.id &&
          other.placeName == this.placeName &&
          other.address == this.address &&
          other.city == this.city &&
          other.state == this.state &&
          other.country == this.country &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.zipCode == this.zipCode &&
          other.placeTypesJson == this.placeTypesJson &&
          other.phoneNumber == this.phoneNumber &&
          other.website == this.website &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PlacesCompanion extends drift.UpdateCompanion<Place> {
  final drift.Value<String> id;
  final drift.Value<String> placeName;
  final drift.Value<String> address;
  final drift.Value<String> city;
  final drift.Value<String> state;
  final drift.Value<String> country;
  final drift.Value<double> latitude;
  final drift.Value<double> longitude;
  final drift.Value<String> zipCode;
  final drift.Value<String?> placeTypesJson;
  final drift.Value<String?> phoneNumber;
  final drift.Value<String?> website;
  final drift.Value<DateTime> createdAt;
  final drift.Value<DateTime> updatedAt;
  final drift.Value<int> rowid;

  const PlacesCompanion({
    this.id = const drift.Value.absent(),
    this.placeName = const drift.Value.absent(),
    this.address = const drift.Value.absent(),
    this.city = const drift.Value.absent(),
    this.state = const drift.Value.absent(),
    this.country = const drift.Value.absent(),
    this.latitude = const drift.Value.absent(),
    this.longitude = const drift.Value.absent(),
    this.zipCode = const drift.Value.absent(),
    this.placeTypesJson = const drift.Value.absent(),
    this.phoneNumber = const drift.Value.absent(),
    this.website = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });

  PlacesCompanion.insert({
    this.id = const drift.Value.absent(),
    required String placeName,
    required String address,
    required String city,
    required String state,
    required String country,
    required double latitude,
    required double longitude,
    required String zipCode,
    this.placeTypesJson = const drift.Value.absent(),
    this.phoneNumber = const drift.Value.absent(),
    this.website = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  })  : placeName = drift.Value(placeName),
        address = drift.Value(address),
        city = drift.Value(city),
        state = drift.Value(state),
        country = drift.Value(country),
        latitude = drift.Value(latitude),
        longitude = drift.Value(longitude),
        zipCode = drift.Value(zipCode);

  static drift.Insertable<Place> custom({
    drift.Expression<String>? id,
    drift.Expression<String>? placeName,
    drift.Expression<String>? address,
    drift.Expression<String>? city,
    drift.Expression<String>? state,
    drift.Expression<String>? country,
    drift.Expression<double>? latitude,
    drift.Expression<double>? longitude,
    drift.Expression<String>? zipCode,
    drift.Expression<String>? placeTypesJson,
    drift.Expression<String>? phoneNumber,
    drift.Expression<String>? website,
    drift.Expression<DateTime>? createdAt,
    drift.Expression<DateTime>? updatedAt,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (placeName != null) 'place_name': placeName,
      if (address != null) 'address': address,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (zipCode != null) 'zip_code': zipCode,
      if (placeTypesJson != null) 'place_types': placeTypesJson,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (website != null) 'website': website,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlacesCompanion copyWith(
      {drift.Value<String>? id,
      drift.Value<String>? placeName,
      drift.Value<String>? address,
      drift.Value<String>? city,
      drift.Value<String>? state,
      drift.Value<String>? country,
      drift.Value<double>? latitude,
      drift.Value<double>? longitude,
      drift.Value<String>? zipCode,
      drift.Value<String?>? placeTypesJson,
      drift.Value<String?>? phoneNumber,
      drift.Value<String?>? website,
      drift.Value<DateTime>? createdAt,
      drift.Value<DateTime>? updatedAt,
      drift.Value<int>? rowid}) {
    return PlacesCompanion(
      id: id ?? this.id,
      placeName: placeName ?? this.placeName,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      zipCode: zipCode ?? this.zipCode,
      placeTypesJson: placeTypesJson ?? this.placeTypesJson,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      website: website ?? this.website,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<String>(id.value);
    }
    if (placeName.present) {
      map['place_name'] = drift.Variable<String>(placeName.value);
    }
    if (address.present) {
      map['address'] = drift.Variable<String>(address.value);
    }
    if (city.present) {
      map['city'] = drift.Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = drift.Variable<String>(state.value);
    }
    if (country.present) {
      map['country'] = drift.Variable<String>(country.value);
    }
    if (latitude.present) {
      map['latitude'] = drift.Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = drift.Variable<double>(longitude.value);
    }
    if (zipCode.present) {
      map['zip_code'] = drift.Variable<String>(zipCode.value);
    }
    if (placeTypesJson.present) {
      map['place_types'] = drift.Variable<String>(placeTypesJson.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = drift.Variable<String>(phoneNumber.value);
    }
    if (website.present) {
      map['website'] = drift.Variable<String>(website.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = drift.Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlacesCompanion(')
          ..write('id: $id, ')
          ..write('placeName: $placeName, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('zipCode: $zipCode, ')
          ..write('placeTypesJson: $placeTypesJson, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('website: $website, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FollowsTable extends Follows with drift.TableInfo<$FollowsTable, Follow> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;

  $FollowsTable(this.attachedDatabase, [this._alias]);

  static const drift.VerificationMeta _idMeta = const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<String> id = drift.GeneratedColumn<String>('id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, $customConstraints: 'PRIMARY KEY NOT NULL', clientDefault: () => Ulid().toString());
  static const drift.VerificationMeta _followerIdMeta = const drift.VerificationMeta('followerId');
  @override
  late final drift.GeneratedColumn<String> followerId = drift.GeneratedColumn<String>('follower_id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES profiles (id)'));
  static const drift.VerificationMeta _followingIdMeta = const drift.VerificationMeta('followingId');
  @override
  late final drift.GeneratedColumn<String> followingId = drift.GeneratedColumn<String>('following_id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES profiles (id)'));
  static const drift.VerificationMeta _statusMeta = const drift.VerificationMeta('status');
  @override
  late final drift.GeneratedColumn<String> status = drift.GeneratedColumn<String>('status', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 20),
      type: drift.DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const drift.Constant('pending'));
  static const drift.VerificationMeta _createdAtMeta = const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());

  @override
  List<drift.GeneratedColumn> get $columns => [id, followerId, followingId, status, createdAt];

  @override
  String get aliasedName => _alias ?? actualTableName;

  @override
  String get actualTableName => $name;
  static const String $name = 'follows';

  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Follow> instance, {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('follower_id')) {
      context.handle(_followerIdMeta, followerId.isAcceptableOrUnknown(data['follower_id']!, _followerIdMeta));
    } else if (isInserting) {
      context.missing(_followerIdMeta);
    }
    if (data.containsKey('following_id')) {
      context.handle(_followingIdMeta, followingId.isAcceptableOrUnknown(data['following_id']!, _followingIdMeta));
    } else if (isInserting) {
      context.missing(_followingIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta, status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};

  @override
  List<Set<drift.GeneratedColumn>> get uniqueKeys => [
        {followerId, followingId},
      ];

  @override
  Follow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Follow(
      id: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}id'])!,
      followerId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}follower_id'])!,
      followingId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}following_id'])!,
      status: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}status'])!,
      createdAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $FollowsTable createAlias(String alias) {
    return $FollowsTable(attachedDatabase, alias);
  }
}

class Follow extends drift.DataClass implements drift.Insertable<Follow> {
  final String id;
  final String followerId;
  final String followingId;
  final String status;
  final DateTime createdAt;

  const Follow({required this.id, required this.followerId, required this.followingId, required this.status, required this.createdAt});

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<String>(id);
    map['follower_id'] = drift.Variable<String>(followerId);
    map['following_id'] = drift.Variable<String>(followingId);
    map['status'] = drift.Variable<String>(status);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  FollowsCompanion toCompanion(bool nullToAbsent) {
    return FollowsCompanion(
      id: drift.Value(id),
      followerId: drift.Value(followerId),
      followingId: drift.Value(followingId),
      status: drift.Value(status),
      createdAt: drift.Value(createdAt),
    );
  }

  factory Follow.fromJson(Map<String, dynamic> json, {drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Follow(
      id: serializer.fromJson<String>(json['id']),
      followerId: serializer.fromJson<String>(json['followerId']),
      followingId: serializer.fromJson<String>(json['followingId']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }

  @override
  Map<String, dynamic> toJson({drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'followerId': serializer.toJson<String>(followerId),
      'followingId': serializer.toJson<String>(followingId),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Follow copyWith({String? id, String? followerId, String? followingId, String? status, DateTime? createdAt}) => Follow(
        id: id ?? this.id,
        followerId: followerId ?? this.followerId,
        followingId: followingId ?? this.followingId,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
      );

  Follow copyWithCompanion(FollowsCompanion data) {
    return Follow(
      id: data.id.present ? data.id.value : this.id,
      followerId: data.followerId.present ? data.followerId.value : this.followerId,
      followingId: data.followingId.present ? data.followingId.value : this.followingId,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Follow(')
          ..write('id: $id, ')
          ..write('followerId: $followerId, ')
          ..write('followingId: $followingId, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, followerId, followingId, status, createdAt);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Follow &&
          other.id == this.id &&
          other.followerId == this.followerId &&
          other.followingId == this.followingId &&
          other.status == this.status &&
          other.createdAt == this.createdAt);
}

class FollowsCompanion extends drift.UpdateCompanion<Follow> {
  final drift.Value<String> id;
  final drift.Value<String> followerId;
  final drift.Value<String> followingId;
  final drift.Value<String> status;
  final drift.Value<DateTime> createdAt;
  final drift.Value<int> rowid;

  const FollowsCompanion({
    this.id = const drift.Value.absent(),
    this.followerId = const drift.Value.absent(),
    this.followingId = const drift.Value.absent(),
    this.status = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });

  FollowsCompanion.insert({
    this.id = const drift.Value.absent(),
    required String followerId,
    required String followingId,
    this.status = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  })  : followerId = drift.Value(followerId),
        followingId = drift.Value(followingId);

  static drift.Insertable<Follow> custom({
    drift.Expression<String>? id,
    drift.Expression<String>? followerId,
    drift.Expression<String>? followingId,
    drift.Expression<String>? status,
    drift.Expression<DateTime>? createdAt,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (followerId != null) 'follower_id': followerId,
      if (followingId != null) 'following_id': followingId,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FollowsCompanion copyWith(
      {drift.Value<String>? id,
      drift.Value<String>? followerId,
      drift.Value<String>? followingId,
      drift.Value<String>? status,
      drift.Value<DateTime>? createdAt,
      drift.Value<int>? rowid}) {
    return FollowsCompanion(
      id: id ?? this.id,
      followerId: followerId ?? this.followerId,
      followingId: followingId ?? this.followingId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<String>(id.value);
    }
    if (followerId.present) {
      map['follower_id'] = drift.Variable<String>(followerId.value);
    }
    if (followingId.present) {
      map['following_id'] = drift.Variable<String>(followingId.value);
    }
    if (status.present) {
      map['status'] = drift.Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FollowsCompanion(')
          ..write('id: $id, ')
          ..write('followerId: $followerId, ')
          ..write('followingId: $followingId, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PostsTable extends Posts with drift.TableInfo<$PostsTable, Post> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;

  $PostsTable(this.attachedDatabase, [this._alias]);

  static const drift.VerificationMeta _idMeta = const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<String> id = drift.GeneratedColumn<String>('id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, $customConstraints: 'PRIMARY KEY NOT NULL', clientDefault: () => Ulid().toString());
  static const drift.VerificationMeta _profileIdMeta = const drift.VerificationMeta('profileId');
  @override
  late final drift.GeneratedColumn<String> profileId = drift.GeneratedColumn<String>('profile_id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES profiles (id)'));
  static const drift.VerificationMeta _placeIdMeta = const drift.VerificationMeta('placeId');
  @override
  late final drift.GeneratedColumn<String> placeId = drift.GeneratedColumn<String>('place_id', aliasedName, true,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES places (id)'));
  static const drift.VerificationMeta _contentMeta = const drift.VerificationMeta('content');
  @override
  late final drift.GeneratedColumn<String> content = drift.GeneratedColumn<String>('content', aliasedName, false, type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _isEditedMeta = const drift.VerificationMeta('isEdited');
  @override
  late final drift.GeneratedColumn<bool> isEdited = drift.GeneratedColumn<bool>('is_edited', aliasedName, false,
      type: drift.DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: drift.GeneratedColumn.constraintIsAlways('CHECK ("is_edited" IN (0, 1))'),
      defaultValue: const drift.Constant(false));
  static const drift.VerificationMeta _createdAtMeta = const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());
  static const drift.VerificationMeta _updatedAtMeta = const drift.VerificationMeta('updatedAt');
  @override
  late final drift.GeneratedColumn<DateTime> updatedAt =
      drift.GeneratedColumn<DateTime>('updated_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());

  @override
  List<drift.GeneratedColumn> get $columns => [id, profileId, placeId, content, isEdited, createdAt, updatedAt];

  @override
  String get aliasedName => _alias ?? actualTableName;

  @override
  String get actualTableName => $name;
  static const String $name = 'posts';

  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Post> instance, {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('profile_id')) {
      context.handle(_profileIdMeta, profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta));
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('place_id')) {
      context.handle(_placeIdMeta, placeId.isAcceptableOrUnknown(data['place_id']!, _placeIdMeta));
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta, content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('is_edited')) {
      context.handle(_isEditedMeta, isEdited.isAcceptableOrUnknown(data['is_edited']!, _isEditedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta, updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};

  @override
  Post map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Post(
      id: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}id'])!,
      profileId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}profile_id'])!,
      placeId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}place_id']),
      content: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}content'])!,
      isEdited: attachedDatabase.typeMapping.read(drift.DriftSqlType.bool, data['${effectivePrefix}is_edited'])!,
      createdAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $PostsTable createAlias(String alias) {
    return $PostsTable(attachedDatabase, alias);
  }
}

class Post extends drift.DataClass implements drift.Insertable<Post> {
  final String id;
  final String profileId;
  final String? placeId;
  final String content;
  final bool isEdited;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Post({required this.id, required this.profileId, this.placeId, required this.content, required this.isEdited, required this.createdAt, required this.updatedAt});

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<String>(id);
    map['profile_id'] = drift.Variable<String>(profileId);
    if (!nullToAbsent || placeId != null) {
      map['place_id'] = drift.Variable<String>(placeId);
    }
    map['content'] = drift.Variable<String>(content);
    map['is_edited'] = drift.Variable<bool>(isEdited);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    map['updated_at'] = drift.Variable<DateTime>(updatedAt);
    return map;
  }

  PostsCompanion toCompanion(bool nullToAbsent) {
    return PostsCompanion(
      id: drift.Value(id),
      profileId: drift.Value(profileId),
      placeId: placeId == null && nullToAbsent ? const drift.Value.absent() : drift.Value(placeId),
      content: drift.Value(content),
      isEdited: drift.Value(isEdited),
      createdAt: drift.Value(createdAt),
      updatedAt: drift.Value(updatedAt),
    );
  }

  factory Post.fromJson(Map<String, dynamic> json, {drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Post(
      id: serializer.fromJson<String>(json['id']),
      profileId: serializer.fromJson<String>(json['profileId']),
      placeId: serializer.fromJson<String?>(json['placeId']),
      content: serializer.fromJson<String>(json['content']),
      isEdited: serializer.fromJson<bool>(json['isEdited']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }

  @override
  Map<String, dynamic> toJson({drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'profileId': serializer.toJson<String>(profileId),
      'placeId': serializer.toJson<String?>(placeId),
      'content': serializer.toJson<String>(content),
      'isEdited': serializer.toJson<bool>(isEdited),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Post copyWith(
          {String? id, String? profileId, drift.Value<String?> placeId = const drift.Value.absent(), String? content, bool? isEdited, DateTime? createdAt, DateTime? updatedAt}) =>
      Post(
        id: id ?? this.id,
        profileId: profileId ?? this.profileId,
        placeId: placeId.present ? placeId.value : this.placeId,
        content: content ?? this.content,
        isEdited: isEdited ?? this.isEdited,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Post copyWithCompanion(PostsCompanion data) {
    return Post(
      id: data.id.present ? data.id.value : this.id,
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      placeId: data.placeId.present ? data.placeId.value : this.placeId,
      content: data.content.present ? data.content.value : this.content,
      isEdited: data.isEdited.present ? data.isEdited.value : this.isEdited,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Post(')
          ..write('id: $id, ')
          ..write('profileId: $profileId, ')
          ..write('placeId: $placeId, ')
          ..write('content: $content, ')
          ..write('isEdited: $isEdited, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, profileId, placeId, content, isEdited, createdAt, updatedAt);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Post &&
          other.id == this.id &&
          other.profileId == this.profileId &&
          other.placeId == this.placeId &&
          other.content == this.content &&
          other.isEdited == this.isEdited &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PostsCompanion extends drift.UpdateCompanion<Post> {
  final drift.Value<String> id;
  final drift.Value<String> profileId;
  final drift.Value<String?> placeId;
  final drift.Value<String> content;
  final drift.Value<bool> isEdited;
  final drift.Value<DateTime> createdAt;
  final drift.Value<DateTime> updatedAt;
  final drift.Value<int> rowid;

  const PostsCompanion({
    this.id = const drift.Value.absent(),
    this.profileId = const drift.Value.absent(),
    this.placeId = const drift.Value.absent(),
    this.content = const drift.Value.absent(),
    this.isEdited = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });

  PostsCompanion.insert({
    this.id = const drift.Value.absent(),
    required String profileId,
    this.placeId = const drift.Value.absent(),
    required String content,
    this.isEdited = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  })  : profileId = drift.Value(profileId),
        content = drift.Value(content);

  static drift.Insertable<Post> custom({
    drift.Expression<String>? id,
    drift.Expression<String>? profileId,
    drift.Expression<String>? placeId,
    drift.Expression<String>? content,
    drift.Expression<bool>? isEdited,
    drift.Expression<DateTime>? createdAt,
    drift.Expression<DateTime>? updatedAt,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (profileId != null) 'profile_id': profileId,
      if (placeId != null) 'place_id': placeId,
      if (content != null) 'content': content,
      if (isEdited != null) 'is_edited': isEdited,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PostsCompanion copyWith(
      {drift.Value<String>? id,
      drift.Value<String>? profileId,
      drift.Value<String?>? placeId,
      drift.Value<String>? content,
      drift.Value<bool>? isEdited,
      drift.Value<DateTime>? createdAt,
      drift.Value<DateTime>? updatedAt,
      drift.Value<int>? rowid}) {
    return PostsCompanion(
      id: id ?? this.id,
      profileId: profileId ?? this.profileId,
      placeId: placeId ?? this.placeId,
      content: content ?? this.content,
      isEdited: isEdited ?? this.isEdited,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<String>(id.value);
    }
    if (profileId.present) {
      map['profile_id'] = drift.Variable<String>(profileId.value);
    }
    if (placeId.present) {
      map['place_id'] = drift.Variable<String>(placeId.value);
    }
    if (content.present) {
      map['content'] = drift.Variable<String>(content.value);
    }
    if (isEdited.present) {
      map['is_edited'] = drift.Variable<bool>(isEdited.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = drift.Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostsCompanion(')
          ..write('id: $id, ')
          ..write('profileId: $profileId, ')
          ..write('placeId: $placeId, ')
          ..write('content: $content, ')
          ..write('isEdited: $isEdited, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MediasTable extends Medias with drift.TableInfo<$MediasTable, Media> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;

  $MediasTable(this.attachedDatabase, [this._alias]);

  static const drift.VerificationMeta _idMeta = const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<String> id = drift.GeneratedColumn<String>('id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, $customConstraints: 'PRIMARY KEY NOT NULL', clientDefault: () => Ulid().toString());
  static const drift.VerificationMeta _profileIdMeta = const drift.VerificationMeta('profileId');
  @override
  late final drift.GeneratedColumn<String> profileId = drift.GeneratedColumn<String>('profile_id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES profiles (id)'));
  static const drift.VerificationMeta _placeIdMeta = const drift.VerificationMeta('placeId');
  @override
  late final drift.GeneratedColumn<String> placeId = drift.GeneratedColumn<String>('place_id', aliasedName, true,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES places (id)'));
  static const drift.VerificationMeta _postIdMeta = const drift.VerificationMeta('postId');
  @override
  late final drift.GeneratedColumn<String> postId = drift.GeneratedColumn<String>('post_id', aliasedName, true,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES posts (id)'));
  static const drift.VerificationMeta _mediaUrlMeta = const drift.VerificationMeta('mediaUrl');
  @override
  late final drift.GeneratedColumn<String> mediaUrl = drift.GeneratedColumn<String>('media_url', aliasedName, false, type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _mediaTypeMeta = const drift.VerificationMeta('mediaType');
  @override
  late final drift.GeneratedColumn<String> mediaType = drift.GeneratedColumn<String>('media_type', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(maxTextLength: 100), type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _createdAtMeta = const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());
  static const drift.VerificationMeta _updatedAtMeta = const drift.VerificationMeta('updatedAt');
  @override
  late final drift.GeneratedColumn<DateTime> updatedAt =
      drift.GeneratedColumn<DateTime>('updated_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());

  @override
  List<drift.GeneratedColumn> get $columns => [id, profileId, placeId, postId, mediaUrl, mediaType, createdAt, updatedAt];

  @override
  String get aliasedName => _alias ?? actualTableName;

  @override
  String get actualTableName => $name;
  static const String $name = 'medias';

  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Media> instance, {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('profile_id')) {
      context.handle(_profileIdMeta, profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta));
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('place_id')) {
      context.handle(_placeIdMeta, placeId.isAcceptableOrUnknown(data['place_id']!, _placeIdMeta));
    }
    if (data.containsKey('post_id')) {
      context.handle(_postIdMeta, postId.isAcceptableOrUnknown(data['post_id']!, _postIdMeta));
    }
    if (data.containsKey('media_url')) {
      context.handle(_mediaUrlMeta, mediaUrl.isAcceptableOrUnknown(data['media_url']!, _mediaUrlMeta));
    } else if (isInserting) {
      context.missing(_mediaUrlMeta);
    }
    if (data.containsKey('media_type')) {
      context.handle(_mediaTypeMeta, mediaType.isAcceptableOrUnknown(data['media_type']!, _mediaTypeMeta));
    } else if (isInserting) {
      context.missing(_mediaTypeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta, updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};

  @override
  Media map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Media(
      id: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}id'])!,
      profileId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}profile_id'])!,
      placeId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}place_id']),
      postId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}post_id']),
      mediaUrl: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}media_url'])!,
      mediaType: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}media_type'])!,
      createdAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $MediasTable createAlias(String alias) {
    return $MediasTable(attachedDatabase, alias);
  }
}

class Media extends drift.DataClass implements drift.Insertable<Media> {
  final String id;
  final String profileId;
  final String? placeId;
  final String? postId;
  final String mediaUrl;
  final String mediaType;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Media(
      {required this.id, required this.profileId, this.placeId, this.postId, required this.mediaUrl, required this.mediaType, required this.createdAt, required this.updatedAt});

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<String>(id);
    map['profile_id'] = drift.Variable<String>(profileId);
    if (!nullToAbsent || placeId != null) {
      map['place_id'] = drift.Variable<String>(placeId);
    }
    if (!nullToAbsent || postId != null) {
      map['post_id'] = drift.Variable<String>(postId);
    }
    map['media_url'] = drift.Variable<String>(mediaUrl);
    map['media_type'] = drift.Variable<String>(mediaType);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    map['updated_at'] = drift.Variable<DateTime>(updatedAt);
    return map;
  }

  MediasCompanion toCompanion(bool nullToAbsent) {
    return MediasCompanion(
      id: drift.Value(id),
      profileId: drift.Value(profileId),
      placeId: placeId == null && nullToAbsent ? const drift.Value.absent() : drift.Value(placeId),
      postId: postId == null && nullToAbsent ? const drift.Value.absent() : drift.Value(postId),
      mediaUrl: drift.Value(mediaUrl),
      mediaType: drift.Value(mediaType),
      createdAt: drift.Value(createdAt),
      updatedAt: drift.Value(updatedAt),
    );
  }

  factory Media.fromJson(Map<String, dynamic> json, {drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Media(
      id: serializer.fromJson<String>(json['id']),
      profileId: serializer.fromJson<String>(json['profileId']),
      placeId: serializer.fromJson<String?>(json['placeId']),
      postId: serializer.fromJson<String?>(json['postId']),
      mediaUrl: serializer.fromJson<String>(json['mediaUrl']),
      mediaType: serializer.fromJson<String>(json['mediaType']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }

  @override
  Map<String, dynamic> toJson({drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'profileId': serializer.toJson<String>(profileId),
      'placeId': serializer.toJson<String?>(placeId),
      'postId': serializer.toJson<String?>(postId),
      'mediaUrl': serializer.toJson<String>(mediaUrl),
      'mediaType': serializer.toJson<String>(mediaType),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Media copyWith(
          {String? id,
          String? profileId,
          drift.Value<String?> placeId = const drift.Value.absent(),
          drift.Value<String?> postId = const drift.Value.absent(),
          String? mediaUrl,
          String? mediaType,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Media(
        id: id ?? this.id,
        profileId: profileId ?? this.profileId,
        placeId: placeId.present ? placeId.value : this.placeId,
        postId: postId.present ? postId.value : this.postId,
        mediaUrl: mediaUrl ?? this.mediaUrl,
        mediaType: mediaType ?? this.mediaType,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Media copyWithCompanion(MediasCompanion data) {
    return Media(
      id: data.id.present ? data.id.value : this.id,
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      placeId: data.placeId.present ? data.placeId.value : this.placeId,
      postId: data.postId.present ? data.postId.value : this.postId,
      mediaUrl: data.mediaUrl.present ? data.mediaUrl.value : this.mediaUrl,
      mediaType: data.mediaType.present ? data.mediaType.value : this.mediaType,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Media(')
          ..write('id: $id, ')
          ..write('profileId: $profileId, ')
          ..write('placeId: $placeId, ')
          ..write('postId: $postId, ')
          ..write('mediaUrl: $mediaUrl, ')
          ..write('mediaType: $mediaType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, profileId, placeId, postId, mediaUrl, mediaType, createdAt, updatedAt);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Media &&
          other.id == this.id &&
          other.profileId == this.profileId &&
          other.placeId == this.placeId &&
          other.postId == this.postId &&
          other.mediaUrl == this.mediaUrl &&
          other.mediaType == this.mediaType &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class MediasCompanion extends drift.UpdateCompanion<Media> {
  final drift.Value<String> id;
  final drift.Value<String> profileId;
  final drift.Value<String?> placeId;
  final drift.Value<String?> postId;
  final drift.Value<String> mediaUrl;
  final drift.Value<String> mediaType;
  final drift.Value<DateTime> createdAt;
  final drift.Value<DateTime> updatedAt;
  final drift.Value<int> rowid;

  const MediasCompanion({
    this.id = const drift.Value.absent(),
    this.profileId = const drift.Value.absent(),
    this.placeId = const drift.Value.absent(),
    this.postId = const drift.Value.absent(),
    this.mediaUrl = const drift.Value.absent(),
    this.mediaType = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });

  MediasCompanion.insert({
    this.id = const drift.Value.absent(),
    required String profileId,
    this.placeId = const drift.Value.absent(),
    this.postId = const drift.Value.absent(),
    required String mediaUrl,
    required String mediaType,
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  })  : profileId = drift.Value(profileId),
        mediaUrl = drift.Value(mediaUrl),
        mediaType = drift.Value(mediaType);

  static drift.Insertable<Media> custom({
    drift.Expression<String>? id,
    drift.Expression<String>? profileId,
    drift.Expression<String>? placeId,
    drift.Expression<String>? postId,
    drift.Expression<String>? mediaUrl,
    drift.Expression<String>? mediaType,
    drift.Expression<DateTime>? createdAt,
    drift.Expression<DateTime>? updatedAt,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (profileId != null) 'profile_id': profileId,
      if (placeId != null) 'place_id': placeId,
      if (postId != null) 'post_id': postId,
      if (mediaUrl != null) 'media_url': mediaUrl,
      if (mediaType != null) 'media_type': mediaType,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MediasCompanion copyWith(
      {drift.Value<String>? id,
      drift.Value<String>? profileId,
      drift.Value<String?>? placeId,
      drift.Value<String?>? postId,
      drift.Value<String>? mediaUrl,
      drift.Value<String>? mediaType,
      drift.Value<DateTime>? createdAt,
      drift.Value<DateTime>? updatedAt,
      drift.Value<int>? rowid}) {
    return MediasCompanion(
      id: id ?? this.id,
      profileId: profileId ?? this.profileId,
      placeId: placeId ?? this.placeId,
      postId: postId ?? this.postId,
      mediaUrl: mediaUrl ?? this.mediaUrl,
      mediaType: mediaType ?? this.mediaType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<String>(id.value);
    }
    if (profileId.present) {
      map['profile_id'] = drift.Variable<String>(profileId.value);
    }
    if (placeId.present) {
      map['place_id'] = drift.Variable<String>(placeId.value);
    }
    if (postId.present) {
      map['post_id'] = drift.Variable<String>(postId.value);
    }
    if (mediaUrl.present) {
      map['media_url'] = drift.Variable<String>(mediaUrl.value);
    }
    if (mediaType.present) {
      map['media_type'] = drift.Variable<String>(mediaType.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = drift.Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MediasCompanion(')
          ..write('id: $id, ')
          ..write('profileId: $profileId, ')
          ..write('placeId: $placeId, ')
          ..write('postId: $postId, ')
          ..write('mediaUrl: $mediaUrl, ')
          ..write('mediaType: $mediaType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CommentsTable extends Comments with drift.TableInfo<$CommentsTable, Comment> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;

  $CommentsTable(this.attachedDatabase, [this._alias]);

  static const drift.VerificationMeta _idMeta = const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<String> id = drift.GeneratedColumn<String>('id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, $customConstraints: 'PRIMARY KEY NOT NULL', clientDefault: () => Ulid().toString());
  static const drift.VerificationMeta _profileIdMeta = const drift.VerificationMeta('profileId');
  @override
  late final drift.GeneratedColumn<String> profileId = drift.GeneratedColumn<String>('profile_id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES profiles (id)'));
  static const drift.VerificationMeta _placeIdMeta = const drift.VerificationMeta('placeId');
  @override
  late final drift.GeneratedColumn<String> placeId = drift.GeneratedColumn<String>('place_id', aliasedName, true,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES places (id)'));
  static const drift.VerificationMeta _postIdMeta = const drift.VerificationMeta('postId');
  @override
  late final drift.GeneratedColumn<String> postId = drift.GeneratedColumn<String>('post_id', aliasedName, true,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES posts (id)'));
  static const drift.VerificationMeta _parentCommentIdMeta = const drift.VerificationMeta('parentCommentId');
  @override
  late final drift.GeneratedColumn<String> parentCommentId = drift.GeneratedColumn<String>('parent_comment_id', aliasedName, true,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES comments (id)'));
  static const drift.VerificationMeta _commentTextMeta = const drift.VerificationMeta('commentText');
  @override
  late final drift.GeneratedColumn<String> commentText =
      drift.GeneratedColumn<String>('comment_text', aliasedName, false, type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _likeCountMeta = const drift.VerificationMeta('likeCount');
  @override
  late final drift.GeneratedColumn<int> likeCount =
      drift.GeneratedColumn<int>('like_count', aliasedName, false, type: drift.DriftSqlType.int, requiredDuringInsert: false, defaultValue: const drift.Constant(0));
  static const drift.VerificationMeta _dislikeCountMeta = const drift.VerificationMeta('dislikeCount');
  @override
  late final drift.GeneratedColumn<int> dislikeCount =
      drift.GeneratedColumn<int>('dislike_count', aliasedName, false, type: drift.DriftSqlType.int, requiredDuringInsert: false, defaultValue: const drift.Constant(0));
  static const drift.VerificationMeta _isEditedMeta = const drift.VerificationMeta('isEdited');
  @override
  late final drift.GeneratedColumn<bool> isEdited = drift.GeneratedColumn<bool>('is_edited', aliasedName, false,
      type: drift.DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: drift.GeneratedColumn.constraintIsAlways('CHECK ("is_edited" IN (0, 1))'),
      defaultValue: const drift.Constant(false));
  static const drift.VerificationMeta _createdAtMeta = const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());
  static const drift.VerificationMeta _updatedAtMeta = const drift.VerificationMeta('updatedAt');
  @override
  late final drift.GeneratedColumn<DateTime> updatedAt =
      drift.GeneratedColumn<DateTime>('updated_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());

  @override
  List<drift.GeneratedColumn> get $columns => [id, profileId, placeId, postId, parentCommentId, commentText, likeCount, dislikeCount, isEdited, createdAt, updatedAt];

  @override
  String get aliasedName => _alias ?? actualTableName;

  @override
  String get actualTableName => $name;
  static const String $name = 'comments';

  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Comment> instance, {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('profile_id')) {
      context.handle(_profileIdMeta, profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta));
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('place_id')) {
      context.handle(_placeIdMeta, placeId.isAcceptableOrUnknown(data['place_id']!, _placeIdMeta));
    }
    if (data.containsKey('post_id')) {
      context.handle(_postIdMeta, postId.isAcceptableOrUnknown(data['post_id']!, _postIdMeta));
    }
    if (data.containsKey('parent_comment_id')) {
      context.handle(_parentCommentIdMeta, parentCommentId.isAcceptableOrUnknown(data['parent_comment_id']!, _parentCommentIdMeta));
    }
    if (data.containsKey('comment_text')) {
      context.handle(_commentTextMeta, commentText.isAcceptableOrUnknown(data['comment_text']!, _commentTextMeta));
    } else if (isInserting) {
      context.missing(_commentTextMeta);
    }
    if (data.containsKey('like_count')) {
      context.handle(_likeCountMeta, likeCount.isAcceptableOrUnknown(data['like_count']!, _likeCountMeta));
    }
    if (data.containsKey('dislike_count')) {
      context.handle(_dislikeCountMeta, dislikeCount.isAcceptableOrUnknown(data['dislike_count']!, _dislikeCountMeta));
    }
    if (data.containsKey('is_edited')) {
      context.handle(_isEditedMeta, isEdited.isAcceptableOrUnknown(data['is_edited']!, _isEditedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta, updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};

  @override
  Comment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Comment(
      id: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}id'])!,
      profileId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}profile_id'])!,
      placeId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}place_id']),
      postId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}post_id']),
      parentCommentId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}parent_comment_id']),
      commentText: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}comment_text'])!,
      likeCount: attachedDatabase.typeMapping.read(drift.DriftSqlType.int, data['${effectivePrefix}like_count'])!,
      dislikeCount: attachedDatabase.typeMapping.read(drift.DriftSqlType.int, data['${effectivePrefix}dislike_count'])!,
      isEdited: attachedDatabase.typeMapping.read(drift.DriftSqlType.bool, data['${effectivePrefix}is_edited'])!,
      createdAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $CommentsTable createAlias(String alias) {
    return $CommentsTable(attachedDatabase, alias);
  }
}

class Comment extends drift.DataClass implements drift.Insertable<Comment> {
  final String id;
  final String profileId;
  final String? placeId;
  final String? postId;
  final String? parentCommentId;
  final String commentText;
  final int likeCount;
  final int dislikeCount;
  final bool isEdited;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Comment(
      {required this.id,
      required this.profileId,
      this.placeId,
      this.postId,
      this.parentCommentId,
      required this.commentText,
      required this.likeCount,
      required this.dislikeCount,
      required this.isEdited,
      required this.createdAt,
      required this.updatedAt});

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<String>(id);
    map['profile_id'] = drift.Variable<String>(profileId);
    if (!nullToAbsent || placeId != null) {
      map['place_id'] = drift.Variable<String>(placeId);
    }
    if (!nullToAbsent || postId != null) {
      map['post_id'] = drift.Variable<String>(postId);
    }
    if (!nullToAbsent || parentCommentId != null) {
      map['parent_comment_id'] = drift.Variable<String>(parentCommentId);
    }
    map['comment_text'] = drift.Variable<String>(commentText);
    map['like_count'] = drift.Variable<int>(likeCount);
    map['dislike_count'] = drift.Variable<int>(dislikeCount);
    map['is_edited'] = drift.Variable<bool>(isEdited);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    map['updated_at'] = drift.Variable<DateTime>(updatedAt);
    return map;
  }

  CommentsCompanion toCompanion(bool nullToAbsent) {
    return CommentsCompanion(
      id: drift.Value(id),
      profileId: drift.Value(profileId),
      placeId: placeId == null && nullToAbsent ? const drift.Value.absent() : drift.Value(placeId),
      postId: postId == null && nullToAbsent ? const drift.Value.absent() : drift.Value(postId),
      parentCommentId: parentCommentId == null && nullToAbsent ? const drift.Value.absent() : drift.Value(parentCommentId),
      commentText: drift.Value(commentText),
      likeCount: drift.Value(likeCount),
      dislikeCount: drift.Value(dislikeCount),
      isEdited: drift.Value(isEdited),
      createdAt: drift.Value(createdAt),
      updatedAt: drift.Value(updatedAt),
    );
  }

  factory Comment.fromJson(Map<String, dynamic> json, {drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Comment(
      id: serializer.fromJson<String>(json['id']),
      profileId: serializer.fromJson<String>(json['profileId']),
      placeId: serializer.fromJson<String?>(json['placeId']),
      postId: serializer.fromJson<String?>(json['postId']),
      parentCommentId: serializer.fromJson<String?>(json['parentCommentId']),
      commentText: serializer.fromJson<String>(json['commentText']),
      likeCount: serializer.fromJson<int>(json['likeCount']),
      dislikeCount: serializer.fromJson<int>(json['dislikeCount']),
      isEdited: serializer.fromJson<bool>(json['isEdited']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }

  @override
  Map<String, dynamic> toJson({drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'profileId': serializer.toJson<String>(profileId),
      'placeId': serializer.toJson<String?>(placeId),
      'postId': serializer.toJson<String?>(postId),
      'parentCommentId': serializer.toJson<String?>(parentCommentId),
      'commentText': serializer.toJson<String>(commentText),
      'likeCount': serializer.toJson<int>(likeCount),
      'dislikeCount': serializer.toJson<int>(dislikeCount),
      'isEdited': serializer.toJson<bool>(isEdited),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Comment copyWith(
          {String? id,
          String? profileId,
          drift.Value<String?> placeId = const drift.Value.absent(),
          drift.Value<String?> postId = const drift.Value.absent(),
          drift.Value<String?> parentCommentId = const drift.Value.absent(),
          String? commentText,
          int? likeCount,
          int? dislikeCount,
          bool? isEdited,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Comment(
        id: id ?? this.id,
        profileId: profileId ?? this.profileId,
        placeId: placeId.present ? placeId.value : this.placeId,
        postId: postId.present ? postId.value : this.postId,
        parentCommentId: parentCommentId.present ? parentCommentId.value : this.parentCommentId,
        commentText: commentText ?? this.commentText,
        likeCount: likeCount ?? this.likeCount,
        dislikeCount: dislikeCount ?? this.dislikeCount,
        isEdited: isEdited ?? this.isEdited,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Comment copyWithCompanion(CommentsCompanion data) {
    return Comment(
      id: data.id.present ? data.id.value : this.id,
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      placeId: data.placeId.present ? data.placeId.value : this.placeId,
      postId: data.postId.present ? data.postId.value : this.postId,
      parentCommentId: data.parentCommentId.present ? data.parentCommentId.value : this.parentCommentId,
      commentText: data.commentText.present ? data.commentText.value : this.commentText,
      likeCount: data.likeCount.present ? data.likeCount.value : this.likeCount,
      dislikeCount: data.dislikeCount.present ? data.dislikeCount.value : this.dislikeCount,
      isEdited: data.isEdited.present ? data.isEdited.value : this.isEdited,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Comment(')
          ..write('id: $id, ')
          ..write('profileId: $profileId, ')
          ..write('placeId: $placeId, ')
          ..write('postId: $postId, ')
          ..write('parentCommentId: $parentCommentId, ')
          ..write('commentText: $commentText, ')
          ..write('likeCount: $likeCount, ')
          ..write('dislikeCount: $dislikeCount, ')
          ..write('isEdited: $isEdited, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, profileId, placeId, postId, parentCommentId, commentText, likeCount, dislikeCount, isEdited, createdAt, updatedAt);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Comment &&
          other.id == this.id &&
          other.profileId == this.profileId &&
          other.placeId == this.placeId &&
          other.postId == this.postId &&
          other.parentCommentId == this.parentCommentId &&
          other.commentText == this.commentText &&
          other.likeCount == this.likeCount &&
          other.dislikeCount == this.dislikeCount &&
          other.isEdited == this.isEdited &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CommentsCompanion extends drift.UpdateCompanion<Comment> {
  final drift.Value<String> id;
  final drift.Value<String> profileId;
  final drift.Value<String?> placeId;
  final drift.Value<String?> postId;
  final drift.Value<String?> parentCommentId;
  final drift.Value<String> commentText;
  final drift.Value<int> likeCount;
  final drift.Value<int> dislikeCount;
  final drift.Value<bool> isEdited;
  final drift.Value<DateTime> createdAt;
  final drift.Value<DateTime> updatedAt;
  final drift.Value<int> rowid;

  const CommentsCompanion({
    this.id = const drift.Value.absent(),
    this.profileId = const drift.Value.absent(),
    this.placeId = const drift.Value.absent(),
    this.postId = const drift.Value.absent(),
    this.parentCommentId = const drift.Value.absent(),
    this.commentText = const drift.Value.absent(),
    this.likeCount = const drift.Value.absent(),
    this.dislikeCount = const drift.Value.absent(),
    this.isEdited = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });

  CommentsCompanion.insert({
    this.id = const drift.Value.absent(),
    required String profileId,
    this.placeId = const drift.Value.absent(),
    this.postId = const drift.Value.absent(),
    this.parentCommentId = const drift.Value.absent(),
    required String commentText,
    this.likeCount = const drift.Value.absent(),
    this.dislikeCount = const drift.Value.absent(),
    this.isEdited = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  })  : profileId = drift.Value(profileId),
        commentText = drift.Value(commentText);

  static drift.Insertable<Comment> custom({
    drift.Expression<String>? id,
    drift.Expression<String>? profileId,
    drift.Expression<String>? placeId,
    drift.Expression<String>? postId,
    drift.Expression<String>? parentCommentId,
    drift.Expression<String>? commentText,
    drift.Expression<int>? likeCount,
    drift.Expression<int>? dislikeCount,
    drift.Expression<bool>? isEdited,
    drift.Expression<DateTime>? createdAt,
    drift.Expression<DateTime>? updatedAt,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (profileId != null) 'profile_id': profileId,
      if (placeId != null) 'place_id': placeId,
      if (postId != null) 'post_id': postId,
      if (parentCommentId != null) 'parent_comment_id': parentCommentId,
      if (commentText != null) 'comment_text': commentText,
      if (likeCount != null) 'like_count': likeCount,
      if (dislikeCount != null) 'dislike_count': dislikeCount,
      if (isEdited != null) 'is_edited': isEdited,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CommentsCompanion copyWith(
      {drift.Value<String>? id,
      drift.Value<String>? profileId,
      drift.Value<String?>? placeId,
      drift.Value<String?>? postId,
      drift.Value<String?>? parentCommentId,
      drift.Value<String>? commentText,
      drift.Value<int>? likeCount,
      drift.Value<int>? dislikeCount,
      drift.Value<bool>? isEdited,
      drift.Value<DateTime>? createdAt,
      drift.Value<DateTime>? updatedAt,
      drift.Value<int>? rowid}) {
    return CommentsCompanion(
      id: id ?? this.id,
      profileId: profileId ?? this.profileId,
      placeId: placeId ?? this.placeId,
      postId: postId ?? this.postId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      commentText: commentText ?? this.commentText,
      likeCount: likeCount ?? this.likeCount,
      dislikeCount: dislikeCount ?? this.dislikeCount,
      isEdited: isEdited ?? this.isEdited,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<String>(id.value);
    }
    if (profileId.present) {
      map['profile_id'] = drift.Variable<String>(profileId.value);
    }
    if (placeId.present) {
      map['place_id'] = drift.Variable<String>(placeId.value);
    }
    if (postId.present) {
      map['post_id'] = drift.Variable<String>(postId.value);
    }
    if (parentCommentId.present) {
      map['parent_comment_id'] = drift.Variable<String>(parentCommentId.value);
    }
    if (commentText.present) {
      map['comment_text'] = drift.Variable<String>(commentText.value);
    }
    if (likeCount.present) {
      map['like_count'] = drift.Variable<int>(likeCount.value);
    }
    if (dislikeCount.present) {
      map['dislike_count'] = drift.Variable<int>(dislikeCount.value);
    }
    if (isEdited.present) {
      map['is_edited'] = drift.Variable<bool>(isEdited.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = drift.Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CommentsCompanion(')
          ..write('id: $id, ')
          ..write('profileId: $profileId, ')
          ..write('placeId: $placeId, ')
          ..write('postId: $postId, ')
          ..write('parentCommentId: $parentCommentId, ')
          ..write('commentText: $commentText, ')
          ..write('likeCount: $likeCount, ')
          ..write('dislikeCount: $dislikeCount, ')
          ..write('isEdited: $isEdited, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RatingsTable extends Ratings with drift.TableInfo<$RatingsTable, Rating> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;

  $RatingsTable(this.attachedDatabase, [this._alias]);

  static const drift.VerificationMeta _idMeta = const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<String> id = drift.GeneratedColumn<String>('id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, $customConstraints: 'PRIMARY KEY NOT NULL', clientDefault: () => Ulid().toString());
  static const drift.VerificationMeta _profileIdMeta = const drift.VerificationMeta('profileId');
  @override
  late final drift.GeneratedColumn<String> profileId = drift.GeneratedColumn<String>('profile_id', aliasedName, false,
      type: drift.DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES profiles (id)'));
  static const drift.VerificationMeta _placeIdMeta = const drift.VerificationMeta('placeId');
  @override
  late final drift.GeneratedColumn<String> placeId = drift.GeneratedColumn<String>('place_id', aliasedName, true,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES places (id)'));
  static const drift.VerificationMeta _postIdMeta = const drift.VerificationMeta('postId');
  @override
  late final drift.GeneratedColumn<String> postId = drift.GeneratedColumn<String>('post_id', aliasedName, true,
      type: drift.DriftSqlType.string, requiredDuringInsert: false, defaultConstraints: drift.GeneratedColumn.constraintIsAlways('REFERENCES posts (id)'));
  static const drift.VerificationMeta _nameMeta = const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>('name', aliasedName, false,
      additionalChecks: drift.GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 30), type: drift.DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _ratingMeta = const drift.VerificationMeta('rating');
  @override
  late final drift.GeneratedColumn<double> rating = drift.GeneratedColumn<double>('rating', aliasedName, false, type: drift.DriftSqlType.double, requiredDuringInsert: true);
  static const drift.VerificationMeta _createdAtMeta = const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());
  static const drift.VerificationMeta _updatedAtMeta = const drift.VerificationMeta('updatedAt');
  @override
  late final drift.GeneratedColumn<DateTime> updatedAt =
      drift.GeneratedColumn<DateTime>('updated_at', aliasedName, false, type: drift.DriftSqlType.dateTime, requiredDuringInsert: false, clientDefault: () => DateTime.now());

  @override
  List<drift.GeneratedColumn> get $columns => [id, profileId, placeId, postId, name, rating, createdAt, updatedAt];

  @override
  String get aliasedName => _alias ?? actualTableName;

  @override
  String get actualTableName => $name;
  static const String $name = 'ratings';

  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Rating> instance, {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('profile_id')) {
      context.handle(_profileIdMeta, profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta));
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('place_id')) {
      context.handle(_placeIdMeta, placeId.isAcceptableOrUnknown(data['place_id']!, _placeIdMeta));
    }
    if (data.containsKey('post_id')) {
      context.handle(_postIdMeta, postId.isAcceptableOrUnknown(data['post_id']!, _postIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(_nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta, rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta, updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};

  @override
  Rating map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Rating(
      id: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}id'])!,
      profileId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}profile_id'])!,
      placeId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}place_id']),
      postId: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}post_id']),
      name: attachedDatabase.typeMapping.read(drift.DriftSqlType.string, data['${effectivePrefix}name'])!,
      rating: attachedDatabase.typeMapping.read(drift.DriftSqlType.double, data['${effectivePrefix}rating'])!,
      createdAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping.read(drift.DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $RatingsTable createAlias(String alias) {
    return $RatingsTable(attachedDatabase, alias);
  }
}

class Rating extends drift.DataClass implements drift.Insertable<Rating> {
  final String id;
  final String profileId;
  final String? placeId;
  final String? postId;
  final String name;
  final double rating;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Rating({required this.id, required this.profileId, this.placeId, this.postId, required this.name, required this.rating, required this.createdAt, required this.updatedAt});

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<String>(id);
    map['profile_id'] = drift.Variable<String>(profileId);
    if (!nullToAbsent || placeId != null) {
      map['place_id'] = drift.Variable<String>(placeId);
    }
    if (!nullToAbsent || postId != null) {
      map['post_id'] = drift.Variable<String>(postId);
    }
    map['name'] = drift.Variable<String>(name);
    map['rating'] = drift.Variable<double>(rating);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    map['updated_at'] = drift.Variable<DateTime>(updatedAt);
    return map;
  }

  RatingsCompanion toCompanion(bool nullToAbsent) {
    return RatingsCompanion(
      id: drift.Value(id),
      profileId: drift.Value(profileId),
      placeId: placeId == null && nullToAbsent ? const drift.Value.absent() : drift.Value(placeId),
      postId: postId == null && nullToAbsent ? const drift.Value.absent() : drift.Value(postId),
      name: drift.Value(name),
      rating: drift.Value(rating),
      createdAt: drift.Value(createdAt),
      updatedAt: drift.Value(updatedAt),
    );
  }

  factory Rating.fromJson(Map<String, dynamic> json, {drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Rating(
      id: serializer.fromJson<String>(json['id']),
      profileId: serializer.fromJson<String>(json['profileId']),
      placeId: serializer.fromJson<String?>(json['placeId']),
      postId: serializer.fromJson<String?>(json['postId']),
      name: serializer.fromJson<String>(json['name']),
      rating: serializer.fromJson<double>(json['rating']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }

  @override
  Map<String, dynamic> toJson({drift.ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'profileId': serializer.toJson<String>(profileId),
      'placeId': serializer.toJson<String?>(placeId),
      'postId': serializer.toJson<String?>(postId),
      'name': serializer.toJson<String>(name),
      'rating': serializer.toJson<double>(rating),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Rating copyWith(
          {String? id,
          String? profileId,
          drift.Value<String?> placeId = const drift.Value.absent(),
          drift.Value<String?> postId = const drift.Value.absent(),
          String? name,
          double? rating,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Rating(
        id: id ?? this.id,
        profileId: profileId ?? this.profileId,
        placeId: placeId.present ? placeId.value : this.placeId,
        postId: postId.present ? postId.value : this.postId,
        name: name ?? this.name,
        rating: rating ?? this.rating,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Rating copyWithCompanion(RatingsCompanion data) {
    return Rating(
      id: data.id.present ? data.id.value : this.id,
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      placeId: data.placeId.present ? data.placeId.value : this.placeId,
      postId: data.postId.present ? data.postId.value : this.postId,
      name: data.name.present ? data.name.value : this.name,
      rating: data.rating.present ? data.rating.value : this.rating,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Rating(')
          ..write('id: $id, ')
          ..write('profileId: $profileId, ')
          ..write('placeId: $placeId, ')
          ..write('postId: $postId, ')
          ..write('name: $name, ')
          ..write('rating: $rating, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, profileId, placeId, postId, name, rating, createdAt, updatedAt);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Rating &&
          other.id == this.id &&
          other.profileId == this.profileId &&
          other.placeId == this.placeId &&
          other.postId == this.postId &&
          other.name == this.name &&
          other.rating == this.rating &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RatingsCompanion extends drift.UpdateCompanion<Rating> {
  final drift.Value<String> id;
  final drift.Value<String> profileId;
  final drift.Value<String?> placeId;
  final drift.Value<String?> postId;
  final drift.Value<String> name;
  final drift.Value<double> rating;
  final drift.Value<DateTime> createdAt;
  final drift.Value<DateTime> updatedAt;
  final drift.Value<int> rowid;

  const RatingsCompanion({
    this.id = const drift.Value.absent(),
    this.profileId = const drift.Value.absent(),
    this.placeId = const drift.Value.absent(),
    this.postId = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.rating = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });

  RatingsCompanion.insert({
    this.id = const drift.Value.absent(),
    required String profileId,
    this.placeId = const drift.Value.absent(),
    this.postId = const drift.Value.absent(),
    required String name,
    required double rating,
    this.createdAt = const drift.Value.absent(),
    this.updatedAt = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  })  : profileId = drift.Value(profileId),
        name = drift.Value(name),
        rating = drift.Value(rating);

  static drift.Insertable<Rating> custom({
    drift.Expression<String>? id,
    drift.Expression<String>? profileId,
    drift.Expression<String>? placeId,
    drift.Expression<String>? postId,
    drift.Expression<String>? name,
    drift.Expression<double>? rating,
    drift.Expression<DateTime>? createdAt,
    drift.Expression<DateTime>? updatedAt,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (profileId != null) 'profile_id': profileId,
      if (placeId != null) 'place_id': placeId,
      if (postId != null) 'post_id': postId,
      if (name != null) 'name': name,
      if (rating != null) 'rating': rating,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RatingsCompanion copyWith(
      {drift.Value<String>? id,
      drift.Value<String>? profileId,
      drift.Value<String?>? placeId,
      drift.Value<String?>? postId,
      drift.Value<String>? name,
      drift.Value<double>? rating,
      drift.Value<DateTime>? createdAt,
      drift.Value<DateTime>? updatedAt,
      drift.Value<int>? rowid}) {
    return RatingsCompanion(
      id: id ?? this.id,
      profileId: profileId ?? this.profileId,
      placeId: placeId ?? this.placeId,
      postId: postId ?? this.postId,
      name: name ?? this.name,
      rating: rating ?? this.rating,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<String>(id.value);
    }
    if (profileId.present) {
      map['profile_id'] = drift.Variable<String>(profileId.value);
    }
    if (placeId.present) {
      map['place_id'] = drift.Variable<String>(placeId.value);
    }
    if (postId.present) {
      map['post_id'] = drift.Variable<String>(postId.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (rating.present) {
      map['rating'] = drift.Variable<double>(rating.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = drift.Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RatingsCompanion(')
          ..write('id: $id, ')
          ..write('profileId: $profileId, ')
          ..write('placeId: $placeId, ')
          ..write('postId: $postId, ')
          ..write('name: $name, ')
          ..write('rating: $rating, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends drift.GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);

  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProfilesTable profiles = $ProfilesTable(this);
  late final $PlacesTable places = $PlacesTable(this);
  late final $FollowsTable follows = $FollowsTable(this);
  late final $PostsTable posts = $PostsTable(this);
  late final $MediasTable medias = $MediasTable(this);
  late final $CommentsTable comments = $CommentsTable(this);
  late final $RatingsTable ratings = $RatingsTable(this);

  @override
  Iterable<drift.TableInfo<drift.Table, Object?>> get allTables => allSchemaEntities.whereType<drift.TableInfo<drift.Table, Object?>>();

  @override
  List<drift.DatabaseSchemaEntity> get allSchemaEntities => [profiles, places, follows, posts, medias, comments, ratings];
}

typedef $$ProfilesTableCreateCompanionBuilder = ProfilesCompanion Function({
  required String id,
  required String username,
  required String fullName,
  drift.Value<String?> avatarUrl,
  drift.Value<String?> bio,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});
typedef $$ProfilesTableUpdateCompanionBuilder = ProfilesCompanion Function({
  drift.Value<String> id,
  drift.Value<String> username,
  drift.Value<String> fullName,
  drift.Value<String?> avatarUrl,
  drift.Value<String?> bio,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});

final class $$ProfilesTableReferences extends drift.BaseReferences<_$AppDatabase, $ProfilesTable, Profile> {
  $$ProfilesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$PostsTable, List<Post>> _postsRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.posts, aliasName: drift.$_aliasNameGenerator(db.profiles.id, db.posts.profileId));

  $$PostsTableProcessedTableManager get postsRefs {
    final manager = $$PostsTableTableManager($_db, $_db.posts).filter((f) => f.profileId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_postsRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$MediasTable, List<Media>> _mediasRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.medias, aliasName: drift.$_aliasNameGenerator(db.profiles.id, db.medias.profileId));

  $$MediasTableProcessedTableManager get mediasRefs {
    final manager = $$MediasTableTableManager($_db, $_db.medias).filter((f) => f.profileId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_mediasRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$CommentsTable, List<Comment>> _commentsRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.comments, aliasName: drift.$_aliasNameGenerator(db.profiles.id, db.comments.profileId));

  $$CommentsTableProcessedTableManager get commentsRefs {
    final manager = $$CommentsTableTableManager($_db, $_db.comments).filter((f) => f.profileId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_commentsRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$RatingsTable, List<Rating>> _ratingsRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.ratings, aliasName: drift.$_aliasNameGenerator(db.profiles.id, db.ratings.profileId));

  $$RatingsTableProcessedTableManager get ratingsRefs {
    final manager = $$RatingsTableTableManager($_db, $_db.ratings).filter((f) => f.profileId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_ratingsRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ProfilesTableFilterComposer extends drift.Composer<_$AppDatabase, $ProfilesTable> {
  $$ProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnFilters<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get username => $composableBuilder(column: $table.username, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get fullName => $composableBuilder(column: $table.fullName, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get avatarUrl => $composableBuilder(column: $table.avatarUrl, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get bio => $composableBuilder(column: $table.bio, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> postsRefs(drift.Expression<bool> Function($$PostsTableFilterComposer f) f) {
    final $$PostsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableFilterComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> mediasRefs(drift.Expression<bool> Function($$MediasTableFilterComposer f) f) {
    final $$MediasTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.medias,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$MediasTableFilterComposer(
              $db: $db,
              $table: $db.medias,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> commentsRefs(drift.Expression<bool> Function($$CommentsTableFilterComposer f) f) {
    final $$CommentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableFilterComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> ratingsRefs(drift.Expression<bool> Function($$RatingsTableFilterComposer f) f) {
    final $$RatingsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.ratings,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$RatingsTableFilterComposer(
              $db: $db,
              $table: $db.ratings,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProfilesTableOrderingComposer extends drift.Composer<_$AppDatabase, $ProfilesTable> {
  $$ProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnOrderings<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get username => $composableBuilder(column: $table.username, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get fullName => $composableBuilder(column: $table.fullName, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get avatarUrl => $composableBuilder(column: $table.avatarUrl, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get bio => $composableBuilder(column: $table.bio, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnOrderings(column));
}

class $$ProfilesTableAnnotationComposer extends drift.Composer<_$AppDatabase, $ProfilesTable> {
  $$ProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.GeneratedColumn<String> get id => $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get username => $composableBuilder(column: $table.username, builder: (column) => column);

  drift.GeneratedColumn<String> get fullName => $composableBuilder(column: $table.fullName, builder: (column) => column);

  drift.GeneratedColumn<String> get avatarUrl => $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  drift.GeneratedColumn<String> get bio => $composableBuilder(column: $table.bio, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  drift.Expression<T> postsRefs<T extends Object>(drift.Expression<T> Function($$PostsTableAnnotationComposer a) f) {
    final $$PostsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableAnnotationComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> mediasRefs<T extends Object>(drift.Expression<T> Function($$MediasTableAnnotationComposer a) f) {
    final $$MediasTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.medias,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$MediasTableAnnotationComposer(
              $db: $db,
              $table: $db.medias,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> commentsRefs<T extends Object>(drift.Expression<T> Function($$CommentsTableAnnotationComposer a) f) {
    final $$CommentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableAnnotationComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> ratingsRefs<T extends Object>(drift.Expression<T> Function($$RatingsTableAnnotationComposer a) f) {
    final $$RatingsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.ratings,
        getReferencedColumn: (t) => t.profileId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$RatingsTableAnnotationComposer(
              $db: $db,
              $table: $db.ratings,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProfilesTableTableManager extends drift.RootTableManager<
    _$AppDatabase,
    $ProfilesTable,
    Profile,
    $$ProfilesTableFilterComposer,
    $$ProfilesTableOrderingComposer,
    $$ProfilesTableAnnotationComposer,
    $$ProfilesTableCreateCompanionBuilder,
    $$ProfilesTableUpdateCompanionBuilder,
    (Profile, $$ProfilesTableReferences),
    Profile,
    drift.PrefetchHooks Function({bool postsRefs, bool mediasRefs, bool commentsRefs, bool ratingsRefs})> {
  $$ProfilesTableTableManager(_$AppDatabase db, $ProfilesTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () => $$ProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () => $$ProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => $$ProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            drift.Value<String> username = const drift.Value.absent(),
            drift.Value<String> fullName = const drift.Value.absent(),
            drift.Value<String?> avatarUrl = const drift.Value.absent(),
            drift.Value<String?> bio = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              ProfilesCompanion(
            id: id,
            username: username,
            fullName: fullName,
            avatarUrl: avatarUrl,
            bio: bio,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String username,
            required String fullName,
            drift.Value<String?> avatarUrl = const drift.Value.absent(),
            drift.Value<String?> bio = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              ProfilesCompanion.insert(
            id: id,
            username: username,
            fullName: fullName,
            avatarUrl: avatarUrl,
            bio: bio,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), $$ProfilesTableReferences(db, table, e))).toList(),
          prefetchHooksCallback: ({postsRefs = false, mediasRefs = false, commentsRefs = false, ratingsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (postsRefs) db.posts, if (mediasRefs) db.medias, if (commentsRefs) db.comments, if (ratingsRefs) db.ratings],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (postsRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ProfilesTableReferences._postsRefsTable(db),
                        managerFromTypedResult: (p0) => $$ProfilesTableReferences(db, table, p0).postsRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.profileId == item.id),
                        typedResults: items),
                  if (mediasRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ProfilesTableReferences._mediasRefsTable(db),
                        managerFromTypedResult: (p0) => $$ProfilesTableReferences(db, table, p0).mediasRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.profileId == item.id),
                        typedResults: items),
                  if (commentsRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ProfilesTableReferences._commentsRefsTable(db),
                        managerFromTypedResult: (p0) => $$ProfilesTableReferences(db, table, p0).commentsRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.profileId == item.id),
                        typedResults: items),
                  if (ratingsRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ProfilesTableReferences._ratingsRefsTable(db),
                        managerFromTypedResult: (p0) => $$ProfilesTableReferences(db, table, p0).ratingsRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.profileId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ProfilesTableProcessedTableManager = drift.ProcessedTableManager<
    _$AppDatabase,
    $ProfilesTable,
    Profile,
    $$ProfilesTableFilterComposer,
    $$ProfilesTableOrderingComposer,
    $$ProfilesTableAnnotationComposer,
    $$ProfilesTableCreateCompanionBuilder,
    $$ProfilesTableUpdateCompanionBuilder,
    (Profile, $$ProfilesTableReferences),
    Profile,
    drift.PrefetchHooks Function({bool postsRefs, bool mediasRefs, bool commentsRefs, bool ratingsRefs})>;
typedef $$PlacesTableCreateCompanionBuilder = PlacesCompanion Function({
  drift.Value<String> id,
  required String placeName,
  required String address,
  required String city,
  required String state,
  required String country,
  required double latitude,
  required double longitude,
  required String zipCode,
  drift.Value<String?> placeTypesJson,
  drift.Value<String?> phoneNumber,
  drift.Value<String?> website,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});
typedef $$PlacesTableUpdateCompanionBuilder = PlacesCompanion Function({
  drift.Value<String> id,
  drift.Value<String> placeName,
  drift.Value<String> address,
  drift.Value<String> city,
  drift.Value<String> state,
  drift.Value<String> country,
  drift.Value<double> latitude,
  drift.Value<double> longitude,
  drift.Value<String> zipCode,
  drift.Value<String?> placeTypesJson,
  drift.Value<String?> phoneNumber,
  drift.Value<String?> website,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});

final class $$PlacesTableReferences extends drift.BaseReferences<_$AppDatabase, $PlacesTable, Place> {
  $$PlacesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$PostsTable, List<Post>> _postsRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.posts, aliasName: drift.$_aliasNameGenerator(db.places.id, db.posts.placeId));

  $$PostsTableProcessedTableManager get postsRefs {
    final manager = $$PostsTableTableManager($_db, $_db.posts).filter((f) => f.placeId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_postsRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$MediasTable, List<Media>> _mediasRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.medias, aliasName: drift.$_aliasNameGenerator(db.places.id, db.medias.placeId));

  $$MediasTableProcessedTableManager get mediasRefs {
    final manager = $$MediasTableTableManager($_db, $_db.medias).filter((f) => f.placeId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_mediasRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$CommentsTable, List<Comment>> _commentsRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.comments, aliasName: drift.$_aliasNameGenerator(db.places.id, db.comments.placeId));

  $$CommentsTableProcessedTableManager get commentsRefs {
    final manager = $$CommentsTableTableManager($_db, $_db.comments).filter((f) => f.placeId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_commentsRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$RatingsTable, List<Rating>> _ratingsRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.ratings, aliasName: drift.$_aliasNameGenerator(db.places.id, db.ratings.placeId));

  $$RatingsTableProcessedTableManager get ratingsRefs {
    final manager = $$RatingsTableTableManager($_db, $_db.ratings).filter((f) => f.placeId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_ratingsRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$PlacesTableFilterComposer extends drift.Composer<_$AppDatabase, $PlacesTable> {
  $$PlacesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnFilters<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get placeName => $composableBuilder(column: $table.placeName, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get address => $composableBuilder(column: $table.address, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get city => $composableBuilder(column: $table.city, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get state => $composableBuilder(column: $table.state, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get country => $composableBuilder(column: $table.country, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get latitude => $composableBuilder(column: $table.latitude, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get longitude => $composableBuilder(column: $table.longitude, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get zipCode => $composableBuilder(column: $table.zipCode, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get placeTypesJson => $composableBuilder(column: $table.placeTypesJson, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get phoneNumber => $composableBuilder(column: $table.phoneNumber, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get website => $composableBuilder(column: $table.website, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> postsRefs(drift.Expression<bool> Function($$PostsTableFilterComposer f) f) {
    final $$PostsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.placeId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableFilterComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> mediasRefs(drift.Expression<bool> Function($$MediasTableFilterComposer f) f) {
    final $$MediasTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.medias,
        getReferencedColumn: (t) => t.placeId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$MediasTableFilterComposer(
              $db: $db,
              $table: $db.medias,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> commentsRefs(drift.Expression<bool> Function($$CommentsTableFilterComposer f) f) {
    final $$CommentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.placeId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableFilterComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> ratingsRefs(drift.Expression<bool> Function($$RatingsTableFilterComposer f) f) {
    final $$RatingsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.ratings,
        getReferencedColumn: (t) => t.placeId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$RatingsTableFilterComposer(
              $db: $db,
              $table: $db.ratings,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PlacesTableOrderingComposer extends drift.Composer<_$AppDatabase, $PlacesTable> {
  $$PlacesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnOrderings<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get placeName => $composableBuilder(column: $table.placeName, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get address => $composableBuilder(column: $table.address, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get city => $composableBuilder(column: $table.city, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get state => $composableBuilder(column: $table.state, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get country => $composableBuilder(column: $table.country, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get latitude => $composableBuilder(column: $table.latitude, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get longitude => $composableBuilder(column: $table.longitude, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get zipCode => $composableBuilder(column: $table.zipCode, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get placeTypesJson => $composableBuilder(column: $table.placeTypesJson, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get phoneNumber => $composableBuilder(column: $table.phoneNumber, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get website => $composableBuilder(column: $table.website, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnOrderings(column));
}

class $$PlacesTableAnnotationComposer extends drift.Composer<_$AppDatabase, $PlacesTable> {
  $$PlacesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.GeneratedColumn<String> get id => $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get placeName => $composableBuilder(column: $table.placeName, builder: (column) => column);

  drift.GeneratedColumn<String> get address => $composableBuilder(column: $table.address, builder: (column) => column);

  drift.GeneratedColumn<String> get city => $composableBuilder(column: $table.city, builder: (column) => column);

  drift.GeneratedColumn<String> get state => $composableBuilder(column: $table.state, builder: (column) => column);

  drift.GeneratedColumn<String> get country => $composableBuilder(column: $table.country, builder: (column) => column);

  drift.GeneratedColumn<double> get latitude => $composableBuilder(column: $table.latitude, builder: (column) => column);

  drift.GeneratedColumn<double> get longitude => $composableBuilder(column: $table.longitude, builder: (column) => column);

  drift.GeneratedColumn<String> get zipCode => $composableBuilder(column: $table.zipCode, builder: (column) => column);

  drift.GeneratedColumn<String> get placeTypesJson => $composableBuilder(column: $table.placeTypesJson, builder: (column) => column);

  drift.GeneratedColumn<String> get phoneNumber => $composableBuilder(column: $table.phoneNumber, builder: (column) => column);

  drift.GeneratedColumn<String> get website => $composableBuilder(column: $table.website, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  drift.Expression<T> postsRefs<T extends Object>(drift.Expression<T> Function($$PostsTableAnnotationComposer a) f) {
    final $$PostsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.placeId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableAnnotationComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> mediasRefs<T extends Object>(drift.Expression<T> Function($$MediasTableAnnotationComposer a) f) {
    final $$MediasTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.medias,
        getReferencedColumn: (t) => t.placeId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$MediasTableAnnotationComposer(
              $db: $db,
              $table: $db.medias,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> commentsRefs<T extends Object>(drift.Expression<T> Function($$CommentsTableAnnotationComposer a) f) {
    final $$CommentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.placeId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableAnnotationComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> ratingsRefs<T extends Object>(drift.Expression<T> Function($$RatingsTableAnnotationComposer a) f) {
    final $$RatingsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.ratings,
        getReferencedColumn: (t) => t.placeId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$RatingsTableAnnotationComposer(
              $db: $db,
              $table: $db.ratings,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PlacesTableTableManager extends drift.RootTableManager<
    _$AppDatabase,
    $PlacesTable,
    Place,
    $$PlacesTableFilterComposer,
    $$PlacesTableOrderingComposer,
    $$PlacesTableAnnotationComposer,
    $$PlacesTableCreateCompanionBuilder,
    $$PlacesTableUpdateCompanionBuilder,
    (Place, $$PlacesTableReferences),
    Place,
    drift.PrefetchHooks Function({bool postsRefs, bool mediasRefs, bool commentsRefs, bool ratingsRefs})> {
  $$PlacesTableTableManager(_$AppDatabase db, $PlacesTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () => $$PlacesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () => $$PlacesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => $$PlacesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            drift.Value<String> placeName = const drift.Value.absent(),
            drift.Value<String> address = const drift.Value.absent(),
            drift.Value<String> city = const drift.Value.absent(),
            drift.Value<String> state = const drift.Value.absent(),
            drift.Value<String> country = const drift.Value.absent(),
            drift.Value<double> latitude = const drift.Value.absent(),
            drift.Value<double> longitude = const drift.Value.absent(),
            drift.Value<String> zipCode = const drift.Value.absent(),
            drift.Value<String?> placeTypesJson = const drift.Value.absent(),
            drift.Value<String?> phoneNumber = const drift.Value.absent(),
            drift.Value<String?> website = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              PlacesCompanion(
            id: id,
            placeName: placeName,
            address: address,
            city: city,
            state: state,
            country: country,
            latitude: latitude,
            longitude: longitude,
            zipCode: zipCode,
            placeTypesJson: placeTypesJson,
            phoneNumber: phoneNumber,
            website: website,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            required String placeName,
            required String address,
            required String city,
            required String state,
            required String country,
            required double latitude,
            required double longitude,
            required String zipCode,
            drift.Value<String?> placeTypesJson = const drift.Value.absent(),
            drift.Value<String?> phoneNumber = const drift.Value.absent(),
            drift.Value<String?> website = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              PlacesCompanion.insert(
            id: id,
            placeName: placeName,
            address: address,
            city: city,
            state: state,
            country: country,
            latitude: latitude,
            longitude: longitude,
            zipCode: zipCode,
            placeTypesJson: placeTypesJson,
            phoneNumber: phoneNumber,
            website: website,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), $$PlacesTableReferences(db, table, e))).toList(),
          prefetchHooksCallback: ({postsRefs = false, mediasRefs = false, commentsRefs = false, ratingsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (postsRefs) db.posts, if (mediasRefs) db.medias, if (commentsRefs) db.comments, if (ratingsRefs) db.ratings],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (postsRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PlacesTableReferences._postsRefsTable(db),
                        managerFromTypedResult: (p0) => $$PlacesTableReferences(db, table, p0).postsRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.placeId == item.id),
                        typedResults: items),
                  if (mediasRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PlacesTableReferences._mediasRefsTable(db),
                        managerFromTypedResult: (p0) => $$PlacesTableReferences(db, table, p0).mediasRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.placeId == item.id),
                        typedResults: items),
                  if (commentsRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PlacesTableReferences._commentsRefsTable(db),
                        managerFromTypedResult: (p0) => $$PlacesTableReferences(db, table, p0).commentsRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.placeId == item.id),
                        typedResults: items),
                  if (ratingsRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PlacesTableReferences._ratingsRefsTable(db),
                        managerFromTypedResult: (p0) => $$PlacesTableReferences(db, table, p0).ratingsRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.placeId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$PlacesTableProcessedTableManager = drift.ProcessedTableManager<
    _$AppDatabase,
    $PlacesTable,
    Place,
    $$PlacesTableFilterComposer,
    $$PlacesTableOrderingComposer,
    $$PlacesTableAnnotationComposer,
    $$PlacesTableCreateCompanionBuilder,
    $$PlacesTableUpdateCompanionBuilder,
    (Place, $$PlacesTableReferences),
    Place,
    drift.PrefetchHooks Function({bool postsRefs, bool mediasRefs, bool commentsRefs, bool ratingsRefs})>;
typedef $$FollowsTableCreateCompanionBuilder = FollowsCompanion Function({
  drift.Value<String> id,
  required String followerId,
  required String followingId,
  drift.Value<String> status,
  drift.Value<DateTime> createdAt,
  drift.Value<int> rowid,
});
typedef $$FollowsTableUpdateCompanionBuilder = FollowsCompanion Function({
  drift.Value<String> id,
  drift.Value<String> followerId,
  drift.Value<String> followingId,
  drift.Value<String> status,
  drift.Value<DateTime> createdAt,
  drift.Value<int> rowid,
});

final class $$FollowsTableReferences extends drift.BaseReferences<_$AppDatabase, $FollowsTable, Follow> {
  $$FollowsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProfilesTable _followerIdTable(_$AppDatabase db) => db.profiles.createAlias(drift.$_aliasNameGenerator(db.follows.followerId, db.profiles.id));

  $$ProfilesTableProcessedTableManager? get followerId {
    if ($_item.followerId == null) return null;
    final manager = $$ProfilesTableTableManager($_db, $_db.profiles).filter((f) => f.id($_item.followerId!));
    final item = $_typedResult.readTableOrNull(_followerIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ProfilesTable _followingIdTable(_$AppDatabase db) => db.profiles.createAlias(drift.$_aliasNameGenerator(db.follows.followingId, db.profiles.id));

  $$ProfilesTableProcessedTableManager? get followingId {
    if ($_item.followingId == null) return null;
    final manager = $$ProfilesTableTableManager($_db, $_db.profiles).filter((f) => f.id($_item.followingId!));
    final item = $_typedResult.readTableOrNull(_followingIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$FollowsTableFilterComposer extends drift.Composer<_$AppDatabase, $FollowsTable> {
  $$FollowsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnFilters<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get status => $composableBuilder(column: $table.status, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnFilters(column));

  $$ProfilesTableFilterComposer get followerId {
    final $$ProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.followerId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableFilterComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ProfilesTableFilterComposer get followingId {
    final $$ProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.followingId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableFilterComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FollowsTableOrderingComposer extends drift.Composer<_$AppDatabase, $FollowsTable> {
  $$FollowsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnOrderings<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get status => $composableBuilder(column: $table.status, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnOrderings(column));

  $$ProfilesTableOrderingComposer get followerId {
    final $$ProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.followerId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ProfilesTableOrderingComposer get followingId {
    final $$ProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.followingId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FollowsTableAnnotationComposer extends drift.Composer<_$AppDatabase, $FollowsTable> {
  $$FollowsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.GeneratedColumn<String> get id => $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get status => $composableBuilder(column: $table.status, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ProfilesTableAnnotationComposer get followerId {
    final $$ProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.followerId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ProfilesTableAnnotationComposer get followingId {
    final $$ProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.followingId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FollowsTableTableManager extends drift.RootTableManager<
    _$AppDatabase,
    $FollowsTable,
    Follow,
    $$FollowsTableFilterComposer,
    $$FollowsTableOrderingComposer,
    $$FollowsTableAnnotationComposer,
    $$FollowsTableCreateCompanionBuilder,
    $$FollowsTableUpdateCompanionBuilder,
    (Follow, $$FollowsTableReferences),
    Follow,
    drift.PrefetchHooks Function({bool followerId, bool followingId})> {
  $$FollowsTableTableManager(_$AppDatabase db, $FollowsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () => $$FollowsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () => $$FollowsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => $$FollowsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            drift.Value<String> followerId = const drift.Value.absent(),
            drift.Value<String> followingId = const drift.Value.absent(),
            drift.Value<String> status = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              FollowsCompanion(
            id: id,
            followerId: followerId,
            followingId: followingId,
            status: status,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            required String followerId,
            required String followingId,
            drift.Value<String> status = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              FollowsCompanion.insert(
            id: id,
            followerId: followerId,
            followingId: followingId,
            status: status,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), $$FollowsTableReferences(db, table, e))).toList(),
          prefetchHooksCallback: ({followerId = false, followingId = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <T extends drift.TableManagerState<dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic>>(state) {
                if (followerId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.followerId,
                    referencedTable: $$FollowsTableReferences._followerIdTable(db),
                    referencedColumn: $$FollowsTableReferences._followerIdTable(db).id,
                  ) as T;
                }
                if (followingId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.followingId,
                    referencedTable: $$FollowsTableReferences._followingIdTable(db),
                    referencedColumn: $$FollowsTableReferences._followingIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$FollowsTableProcessedTableManager = drift.ProcessedTableManager<
    _$AppDatabase,
    $FollowsTable,
    Follow,
    $$FollowsTableFilterComposer,
    $$FollowsTableOrderingComposer,
    $$FollowsTableAnnotationComposer,
    $$FollowsTableCreateCompanionBuilder,
    $$FollowsTableUpdateCompanionBuilder,
    (Follow, $$FollowsTableReferences),
    Follow,
    drift.PrefetchHooks Function({bool followerId, bool followingId})>;
typedef $$PostsTableCreateCompanionBuilder = PostsCompanion Function({
  drift.Value<String> id,
  required String profileId,
  drift.Value<String?> placeId,
  required String content,
  drift.Value<bool> isEdited,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});
typedef $$PostsTableUpdateCompanionBuilder = PostsCompanion Function({
  drift.Value<String> id,
  drift.Value<String> profileId,
  drift.Value<String?> placeId,
  drift.Value<String> content,
  drift.Value<bool> isEdited,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});

final class $$PostsTableReferences extends drift.BaseReferences<_$AppDatabase, $PostsTable, Post> {
  $$PostsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProfilesTable _profileIdTable(_$AppDatabase db) => db.profiles.createAlias(drift.$_aliasNameGenerator(db.posts.profileId, db.profiles.id));

  $$ProfilesTableProcessedTableManager? get profileId {
    if ($_item.profileId == null) return null;
    final manager = $$ProfilesTableTableManager($_db, $_db.profiles).filter((f) => f.id($_item.profileId!));
    final item = $_typedResult.readTableOrNull(_profileIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PlacesTable _placeIdTable(_$AppDatabase db) => db.places.createAlias(drift.$_aliasNameGenerator(db.posts.placeId, db.places.id));

  $$PlacesTableProcessedTableManager? get placeId {
    if ($_item.placeId == null) return null;
    final manager = $$PlacesTableTableManager($_db, $_db.places).filter((f) => f.id($_item.placeId!));
    final item = $_typedResult.readTableOrNull(_placeIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static drift.MultiTypedResultKey<$MediasTable, List<Media>> _mediasRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.medias, aliasName: drift.$_aliasNameGenerator(db.posts.id, db.medias.postId));

  $$MediasTableProcessedTableManager get mediasRefs {
    final manager = $$MediasTableTableManager($_db, $_db.medias).filter((f) => f.postId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_mediasRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$CommentsTable, List<Comment>> _commentsRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.comments, aliasName: drift.$_aliasNameGenerator(db.posts.id, db.comments.postId));

  $$CommentsTableProcessedTableManager get commentsRefs {
    final manager = $$CommentsTableTableManager($_db, $_db.comments).filter((f) => f.postId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_commentsRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$RatingsTable, List<Rating>> _ratingsRefsTable(_$AppDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.ratings, aliasName: drift.$_aliasNameGenerator(db.posts.id, db.ratings.postId));

  $$RatingsTableProcessedTableManager get ratingsRefs {
    final manager = $$RatingsTableTableManager($_db, $_db.ratings).filter((f) => f.postId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_ratingsRefsTable($_db));
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$PostsTableFilterComposer extends drift.Composer<_$AppDatabase, $PostsTable> {
  $$PostsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnFilters<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get content => $composableBuilder(column: $table.content, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<bool> get isEdited => $composableBuilder(column: $table.isEdited, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnFilters(column));

  $$ProfilesTableFilterComposer get profileId {
    final $$ProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableFilterComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableFilterComposer get placeId {
    final $$PlacesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableFilterComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<bool> mediasRefs(drift.Expression<bool> Function($$MediasTableFilterComposer f) f) {
    final $$MediasTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.medias,
        getReferencedColumn: (t) => t.postId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$MediasTableFilterComposer(
              $db: $db,
              $table: $db.medias,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> commentsRefs(drift.Expression<bool> Function($$CommentsTableFilterComposer f) f) {
    final $$CommentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.postId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableFilterComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> ratingsRefs(drift.Expression<bool> Function($$RatingsTableFilterComposer f) f) {
    final $$RatingsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.ratings,
        getReferencedColumn: (t) => t.postId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$RatingsTableFilterComposer(
              $db: $db,
              $table: $db.ratings,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PostsTableOrderingComposer extends drift.Composer<_$AppDatabase, $PostsTable> {
  $$PostsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnOrderings<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get content => $composableBuilder(column: $table.content, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<bool> get isEdited => $composableBuilder(column: $table.isEdited, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnOrderings(column));

  $$ProfilesTableOrderingComposer get profileId {
    final $$ProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableOrderingComposer get placeId {
    final $$PlacesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableOrderingComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PostsTableAnnotationComposer extends drift.Composer<_$AppDatabase, $PostsTable> {
  $$PostsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.GeneratedColumn<String> get id => $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get content => $composableBuilder(column: $table.content, builder: (column) => column);

  drift.GeneratedColumn<bool> get isEdited => $composableBuilder(column: $table.isEdited, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$ProfilesTableAnnotationComposer get profileId {
    final $$ProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableAnnotationComposer get placeId {
    final $$PlacesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableAnnotationComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<T> mediasRefs<T extends Object>(drift.Expression<T> Function($$MediasTableAnnotationComposer a) f) {
    final $$MediasTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.medias,
        getReferencedColumn: (t) => t.postId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$MediasTableAnnotationComposer(
              $db: $db,
              $table: $db.medias,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> commentsRefs<T extends Object>(drift.Expression<T> Function($$CommentsTableAnnotationComposer a) f) {
    final $$CommentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.postId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableAnnotationComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> ratingsRefs<T extends Object>(drift.Expression<T> Function($$RatingsTableAnnotationComposer a) f) {
    final $$RatingsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.ratings,
        getReferencedColumn: (t) => t.postId,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$RatingsTableAnnotationComposer(
              $db: $db,
              $table: $db.ratings,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PostsTableTableManager extends drift.RootTableManager<
    _$AppDatabase,
    $PostsTable,
    Post,
    $$PostsTableFilterComposer,
    $$PostsTableOrderingComposer,
    $$PostsTableAnnotationComposer,
    $$PostsTableCreateCompanionBuilder,
    $$PostsTableUpdateCompanionBuilder,
    (Post, $$PostsTableReferences),
    Post,
    drift.PrefetchHooks Function({bool profileId, bool placeId, bool mediasRefs, bool commentsRefs, bool ratingsRefs})> {
  $$PostsTableTableManager(_$AppDatabase db, $PostsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () => $$PostsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () => $$PostsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => $$PostsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            drift.Value<String> profileId = const drift.Value.absent(),
            drift.Value<String?> placeId = const drift.Value.absent(),
            drift.Value<String> content = const drift.Value.absent(),
            drift.Value<bool> isEdited = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              PostsCompanion(
            id: id,
            profileId: profileId,
            placeId: placeId,
            content: content,
            isEdited: isEdited,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            required String profileId,
            drift.Value<String?> placeId = const drift.Value.absent(),
            required String content,
            drift.Value<bool> isEdited = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              PostsCompanion.insert(
            id: id,
            profileId: profileId,
            placeId: placeId,
            content: content,
            isEdited: isEdited,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), $$PostsTableReferences(db, table, e))).toList(),
          prefetchHooksCallback: ({profileId = false, placeId = false, mediasRefs = false, commentsRefs = false, ratingsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (mediasRefs) db.medias, if (commentsRefs) db.comments, if (ratingsRefs) db.ratings],
              addJoins: <T extends drift.TableManagerState<dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic>>(state) {
                if (profileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.profileId,
                    referencedTable: $$PostsTableReferences._profileIdTable(db),
                    referencedColumn: $$PostsTableReferences._profileIdTable(db).id,
                  ) as T;
                }
                if (placeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.placeId,
                    referencedTable: $$PostsTableReferences._placeIdTable(db),
                    referencedColumn: $$PostsTableReferences._placeIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (mediasRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PostsTableReferences._mediasRefsTable(db),
                        managerFromTypedResult: (p0) => $$PostsTableReferences(db, table, p0).mediasRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.postId == item.id),
                        typedResults: items),
                  if (commentsRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PostsTableReferences._commentsRefsTable(db),
                        managerFromTypedResult: (p0) => $$PostsTableReferences(db, table, p0).commentsRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.postId == item.id),
                        typedResults: items),
                  if (ratingsRefs)
                    await drift.$_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PostsTableReferences._ratingsRefsTable(db),
                        managerFromTypedResult: (p0) => $$PostsTableReferences(db, table, p0).ratingsRefs,
                        referencedItemsForCurrentItem: (item, referencedItems) => referencedItems.where((e) => e.postId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$PostsTableProcessedTableManager = drift.ProcessedTableManager<
    _$AppDatabase,
    $PostsTable,
    Post,
    $$PostsTableFilterComposer,
    $$PostsTableOrderingComposer,
    $$PostsTableAnnotationComposer,
    $$PostsTableCreateCompanionBuilder,
    $$PostsTableUpdateCompanionBuilder,
    (Post, $$PostsTableReferences),
    Post,
    drift.PrefetchHooks Function({bool profileId, bool placeId, bool mediasRefs, bool commentsRefs, bool ratingsRefs})>;
typedef $$MediasTableCreateCompanionBuilder = MediasCompanion Function({
  drift.Value<String> id,
  required String profileId,
  drift.Value<String?> placeId,
  drift.Value<String?> postId,
  required String mediaUrl,
  required String mediaType,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});
typedef $$MediasTableUpdateCompanionBuilder = MediasCompanion Function({
  drift.Value<String> id,
  drift.Value<String> profileId,
  drift.Value<String?> placeId,
  drift.Value<String?> postId,
  drift.Value<String> mediaUrl,
  drift.Value<String> mediaType,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});

final class $$MediasTableReferences extends drift.BaseReferences<_$AppDatabase, $MediasTable, Media> {
  $$MediasTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProfilesTable _profileIdTable(_$AppDatabase db) => db.profiles.createAlias(drift.$_aliasNameGenerator(db.medias.profileId, db.profiles.id));

  $$ProfilesTableProcessedTableManager? get profileId {
    if ($_item.profileId == null) return null;
    final manager = $$ProfilesTableTableManager($_db, $_db.profiles).filter((f) => f.id($_item.profileId!));
    final item = $_typedResult.readTableOrNull(_profileIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PlacesTable _placeIdTable(_$AppDatabase db) => db.places.createAlias(drift.$_aliasNameGenerator(db.medias.placeId, db.places.id));

  $$PlacesTableProcessedTableManager? get placeId {
    if ($_item.placeId == null) return null;
    final manager = $$PlacesTableTableManager($_db, $_db.places).filter((f) => f.id($_item.placeId!));
    final item = $_typedResult.readTableOrNull(_placeIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PostsTable _postIdTable(_$AppDatabase db) => db.posts.createAlias(drift.$_aliasNameGenerator(db.medias.postId, db.posts.id));

  $$PostsTableProcessedTableManager? get postId {
    if ($_item.postId == null) return null;
    final manager = $$PostsTableTableManager($_db, $_db.posts).filter((f) => f.id($_item.postId!));
    final item = $_typedResult.readTableOrNull(_postIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$MediasTableFilterComposer extends drift.Composer<_$AppDatabase, $MediasTable> {
  $$MediasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnFilters<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get mediaUrl => $composableBuilder(column: $table.mediaUrl, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get mediaType => $composableBuilder(column: $table.mediaType, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnFilters(column));

  $$ProfilesTableFilterComposer get profileId {
    final $$ProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableFilterComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableFilterComposer get placeId {
    final $$PlacesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableFilterComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableFilterComposer get postId {
    final $$PostsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableFilterComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$MediasTableOrderingComposer extends drift.Composer<_$AppDatabase, $MediasTable> {
  $$MediasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnOrderings<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get mediaUrl => $composableBuilder(column: $table.mediaUrl, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get mediaType => $composableBuilder(column: $table.mediaType, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnOrderings(column));

  $$ProfilesTableOrderingComposer get profileId {
    final $$ProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableOrderingComposer get placeId {
    final $$PlacesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableOrderingComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableOrderingComposer get postId {
    final $$PostsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableOrderingComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$MediasTableAnnotationComposer extends drift.Composer<_$AppDatabase, $MediasTable> {
  $$MediasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.GeneratedColumn<String> get id => $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get mediaUrl => $composableBuilder(column: $table.mediaUrl, builder: (column) => column);

  drift.GeneratedColumn<String> get mediaType => $composableBuilder(column: $table.mediaType, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$ProfilesTableAnnotationComposer get profileId {
    final $$ProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableAnnotationComposer get placeId {
    final $$PlacesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableAnnotationComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableAnnotationComposer get postId {
    final $$PostsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableAnnotationComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$MediasTableTableManager extends drift.RootTableManager<
    _$AppDatabase,
    $MediasTable,
    Media,
    $$MediasTableFilterComposer,
    $$MediasTableOrderingComposer,
    $$MediasTableAnnotationComposer,
    $$MediasTableCreateCompanionBuilder,
    $$MediasTableUpdateCompanionBuilder,
    (Media, $$MediasTableReferences),
    Media,
    drift.PrefetchHooks Function({bool profileId, bool placeId, bool postId})> {
  $$MediasTableTableManager(_$AppDatabase db, $MediasTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () => $$MediasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () => $$MediasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => $$MediasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            drift.Value<String> profileId = const drift.Value.absent(),
            drift.Value<String?> placeId = const drift.Value.absent(),
            drift.Value<String?> postId = const drift.Value.absent(),
            drift.Value<String> mediaUrl = const drift.Value.absent(),
            drift.Value<String> mediaType = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              MediasCompanion(
            id: id,
            profileId: profileId,
            placeId: placeId,
            postId: postId,
            mediaUrl: mediaUrl,
            mediaType: mediaType,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            required String profileId,
            drift.Value<String?> placeId = const drift.Value.absent(),
            drift.Value<String?> postId = const drift.Value.absent(),
            required String mediaUrl,
            required String mediaType,
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              MediasCompanion.insert(
            id: id,
            profileId: profileId,
            placeId: placeId,
            postId: postId,
            mediaUrl: mediaUrl,
            mediaType: mediaType,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), $$MediasTableReferences(db, table, e))).toList(),
          prefetchHooksCallback: ({profileId = false, placeId = false, postId = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <T extends drift.TableManagerState<dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic>>(state) {
                if (profileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.profileId,
                    referencedTable: $$MediasTableReferences._profileIdTable(db),
                    referencedColumn: $$MediasTableReferences._profileIdTable(db).id,
                  ) as T;
                }
                if (placeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.placeId,
                    referencedTable: $$MediasTableReferences._placeIdTable(db),
                    referencedColumn: $$MediasTableReferences._placeIdTable(db).id,
                  ) as T;
                }
                if (postId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.postId,
                    referencedTable: $$MediasTableReferences._postIdTable(db),
                    referencedColumn: $$MediasTableReferences._postIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$MediasTableProcessedTableManager = drift.ProcessedTableManager<
    _$AppDatabase,
    $MediasTable,
    Media,
    $$MediasTableFilterComposer,
    $$MediasTableOrderingComposer,
    $$MediasTableAnnotationComposer,
    $$MediasTableCreateCompanionBuilder,
    $$MediasTableUpdateCompanionBuilder,
    (Media, $$MediasTableReferences),
    Media,
    drift.PrefetchHooks Function({bool profileId, bool placeId, bool postId})>;
typedef $$CommentsTableCreateCompanionBuilder = CommentsCompanion Function({
  drift.Value<String> id,
  required String profileId,
  drift.Value<String?> placeId,
  drift.Value<String?> postId,
  drift.Value<String?> parentCommentId,
  required String commentText,
  drift.Value<int> likeCount,
  drift.Value<int> dislikeCount,
  drift.Value<bool> isEdited,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});
typedef $$CommentsTableUpdateCompanionBuilder = CommentsCompanion Function({
  drift.Value<String> id,
  drift.Value<String> profileId,
  drift.Value<String?> placeId,
  drift.Value<String?> postId,
  drift.Value<String?> parentCommentId,
  drift.Value<String> commentText,
  drift.Value<int> likeCount,
  drift.Value<int> dislikeCount,
  drift.Value<bool> isEdited,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});

final class $$CommentsTableReferences extends drift.BaseReferences<_$AppDatabase, $CommentsTable, Comment> {
  $$CommentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProfilesTable _profileIdTable(_$AppDatabase db) => db.profiles.createAlias(drift.$_aliasNameGenerator(db.comments.profileId, db.profiles.id));

  $$ProfilesTableProcessedTableManager? get profileId {
    if ($_item.profileId == null) return null;
    final manager = $$ProfilesTableTableManager($_db, $_db.profiles).filter((f) => f.id($_item.profileId!));
    final item = $_typedResult.readTableOrNull(_profileIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PlacesTable _placeIdTable(_$AppDatabase db) => db.places.createAlias(drift.$_aliasNameGenerator(db.comments.placeId, db.places.id));

  $$PlacesTableProcessedTableManager? get placeId {
    if ($_item.placeId == null) return null;
    final manager = $$PlacesTableTableManager($_db, $_db.places).filter((f) => f.id($_item.placeId!));
    final item = $_typedResult.readTableOrNull(_placeIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PostsTable _postIdTable(_$AppDatabase db) => db.posts.createAlias(drift.$_aliasNameGenerator(db.comments.postId, db.posts.id));

  $$PostsTableProcessedTableManager? get postId {
    if ($_item.postId == null) return null;
    final manager = $$PostsTableTableManager($_db, $_db.posts).filter((f) => f.id($_item.postId!));
    final item = $_typedResult.readTableOrNull(_postIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $CommentsTable _parentCommentIdTable(_$AppDatabase db) => db.comments.createAlias(drift.$_aliasNameGenerator(db.comments.parentCommentId, db.comments.id));

  $$CommentsTableProcessedTableManager? get parentCommentId {
    if ($_item.parentCommentId == null) return null;
    final manager = $$CommentsTableTableManager($_db, $_db.comments).filter((f) => f.id($_item.parentCommentId!));
    final item = $_typedResult.readTableOrNull(_parentCommentIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CommentsTableFilterComposer extends drift.Composer<_$AppDatabase, $CommentsTable> {
  $$CommentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnFilters<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get commentText => $composableBuilder(column: $table.commentText, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<int> get likeCount => $composableBuilder(column: $table.likeCount, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<int> get dislikeCount => $composableBuilder(column: $table.dislikeCount, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<bool> get isEdited => $composableBuilder(column: $table.isEdited, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnFilters(column));

  $$ProfilesTableFilterComposer get profileId {
    final $$ProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableFilterComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableFilterComposer get placeId {
    final $$PlacesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableFilterComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableFilterComposer get postId {
    final $$PostsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableFilterComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CommentsTableFilterComposer get parentCommentId {
    final $$CommentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentCommentId,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableFilterComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CommentsTableOrderingComposer extends drift.Composer<_$AppDatabase, $CommentsTable> {
  $$CommentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnOrderings<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get commentText => $composableBuilder(column: $table.commentText, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<int> get likeCount => $composableBuilder(column: $table.likeCount, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<int> get dislikeCount => $composableBuilder(column: $table.dislikeCount, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<bool> get isEdited => $composableBuilder(column: $table.isEdited, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnOrderings(column));

  $$ProfilesTableOrderingComposer get profileId {
    final $$ProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableOrderingComposer get placeId {
    final $$PlacesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableOrderingComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableOrderingComposer get postId {
    final $$PostsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableOrderingComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CommentsTableOrderingComposer get parentCommentId {
    final $$CommentsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentCommentId,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableOrderingComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CommentsTableAnnotationComposer extends drift.Composer<_$AppDatabase, $CommentsTable> {
  $$CommentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.GeneratedColumn<String> get id => $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get commentText => $composableBuilder(column: $table.commentText, builder: (column) => column);

  drift.GeneratedColumn<int> get likeCount => $composableBuilder(column: $table.likeCount, builder: (column) => column);

  drift.GeneratedColumn<int> get dislikeCount => $composableBuilder(column: $table.dislikeCount, builder: (column) => column);

  drift.GeneratedColumn<bool> get isEdited => $composableBuilder(column: $table.isEdited, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$ProfilesTableAnnotationComposer get profileId {
    final $$ProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableAnnotationComposer get placeId {
    final $$PlacesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableAnnotationComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableAnnotationComposer get postId {
    final $$PostsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableAnnotationComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CommentsTableAnnotationComposer get parentCommentId {
    final $$CommentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentCommentId,
        referencedTable: $db.comments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$CommentsTableAnnotationComposer(
              $db: $db,
              $table: $db.comments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CommentsTableTableManager extends drift.RootTableManager<
    _$AppDatabase,
    $CommentsTable,
    Comment,
    $$CommentsTableFilterComposer,
    $$CommentsTableOrderingComposer,
    $$CommentsTableAnnotationComposer,
    $$CommentsTableCreateCompanionBuilder,
    $$CommentsTableUpdateCompanionBuilder,
    (Comment, $$CommentsTableReferences),
    Comment,
    drift.PrefetchHooks Function({bool profileId, bool placeId, bool postId, bool parentCommentId})> {
  $$CommentsTableTableManager(_$AppDatabase db, $CommentsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () => $$CommentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () => $$CommentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => $$CommentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            drift.Value<String> profileId = const drift.Value.absent(),
            drift.Value<String?> placeId = const drift.Value.absent(),
            drift.Value<String?> postId = const drift.Value.absent(),
            drift.Value<String?> parentCommentId = const drift.Value.absent(),
            drift.Value<String> commentText = const drift.Value.absent(),
            drift.Value<int> likeCount = const drift.Value.absent(),
            drift.Value<int> dislikeCount = const drift.Value.absent(),
            drift.Value<bool> isEdited = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              CommentsCompanion(
            id: id,
            profileId: profileId,
            placeId: placeId,
            postId: postId,
            parentCommentId: parentCommentId,
            commentText: commentText,
            likeCount: likeCount,
            dislikeCount: dislikeCount,
            isEdited: isEdited,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            required String profileId,
            drift.Value<String?> placeId = const drift.Value.absent(),
            drift.Value<String?> postId = const drift.Value.absent(),
            drift.Value<String?> parentCommentId = const drift.Value.absent(),
            required String commentText,
            drift.Value<int> likeCount = const drift.Value.absent(),
            drift.Value<int> dislikeCount = const drift.Value.absent(),
            drift.Value<bool> isEdited = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              CommentsCompanion.insert(
            id: id,
            profileId: profileId,
            placeId: placeId,
            postId: postId,
            parentCommentId: parentCommentId,
            commentText: commentText,
            likeCount: likeCount,
            dislikeCount: dislikeCount,
            isEdited: isEdited,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), $$CommentsTableReferences(db, table, e))).toList(),
          prefetchHooksCallback: ({profileId = false, placeId = false, postId = false, parentCommentId = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <T extends drift.TableManagerState<dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic>>(state) {
                if (profileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.profileId,
                    referencedTable: $$CommentsTableReferences._profileIdTable(db),
                    referencedColumn: $$CommentsTableReferences._profileIdTable(db).id,
                  ) as T;
                }
                if (placeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.placeId,
                    referencedTable: $$CommentsTableReferences._placeIdTable(db),
                    referencedColumn: $$CommentsTableReferences._placeIdTable(db).id,
                  ) as T;
                }
                if (postId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.postId,
                    referencedTable: $$CommentsTableReferences._postIdTable(db),
                    referencedColumn: $$CommentsTableReferences._postIdTable(db).id,
                  ) as T;
                }
                if (parentCommentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.parentCommentId,
                    referencedTable: $$CommentsTableReferences._parentCommentIdTable(db),
                    referencedColumn: $$CommentsTableReferences._parentCommentIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CommentsTableProcessedTableManager = drift.ProcessedTableManager<
    _$AppDatabase,
    $CommentsTable,
    Comment,
    $$CommentsTableFilterComposer,
    $$CommentsTableOrderingComposer,
    $$CommentsTableAnnotationComposer,
    $$CommentsTableCreateCompanionBuilder,
    $$CommentsTableUpdateCompanionBuilder,
    (Comment, $$CommentsTableReferences),
    Comment,
    drift.PrefetchHooks Function({bool profileId, bool placeId, bool postId, bool parentCommentId})>;
typedef $$RatingsTableCreateCompanionBuilder = RatingsCompanion Function({
  drift.Value<String> id,
  required String profileId,
  drift.Value<String?> placeId,
  drift.Value<String?> postId,
  required String name,
  required double rating,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});
typedef $$RatingsTableUpdateCompanionBuilder = RatingsCompanion Function({
  drift.Value<String> id,
  drift.Value<String> profileId,
  drift.Value<String?> placeId,
  drift.Value<String?> postId,
  drift.Value<String> name,
  drift.Value<double> rating,
  drift.Value<DateTime> createdAt,
  drift.Value<DateTime> updatedAt,
  drift.Value<int> rowid,
});

final class $$RatingsTableReferences extends drift.BaseReferences<_$AppDatabase, $RatingsTable, Rating> {
  $$RatingsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProfilesTable _profileIdTable(_$AppDatabase db) => db.profiles.createAlias(drift.$_aliasNameGenerator(db.ratings.profileId, db.profiles.id));

  $$ProfilesTableProcessedTableManager? get profileId {
    if ($_item.profileId == null) return null;
    final manager = $$ProfilesTableTableManager($_db, $_db.profiles).filter((f) => f.id($_item.profileId!));
    final item = $_typedResult.readTableOrNull(_profileIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PlacesTable _placeIdTable(_$AppDatabase db) => db.places.createAlias(drift.$_aliasNameGenerator(db.ratings.placeId, db.places.id));

  $$PlacesTableProcessedTableManager? get placeId {
    if ($_item.placeId == null) return null;
    final manager = $$PlacesTableTableManager($_db, $_db.places).filter((f) => f.id($_item.placeId!));
    final item = $_typedResult.readTableOrNull(_placeIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PostsTable _postIdTable(_$AppDatabase db) => db.posts.createAlias(drift.$_aliasNameGenerator(db.ratings.postId, db.posts.id));

  $$PostsTableProcessedTableManager? get postId {
    if ($_item.postId == null) return null;
    final manager = $$PostsTableTableManager($_db, $_db.posts).filter((f) => f.id($_item.postId!));
    final item = $_typedResult.readTableOrNull(_postIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$RatingsTableFilterComposer extends drift.Composer<_$AppDatabase, $RatingsTable> {
  $$RatingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnFilters<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get rating => $composableBuilder(column: $table.rating, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnFilters(column));

  $$ProfilesTableFilterComposer get profileId {
    final $$ProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableFilterComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableFilterComposer get placeId {
    final $$PlacesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableFilterComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableFilterComposer get postId {
    final $$PostsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableFilterComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RatingsTableOrderingComposer extends drift.Composer<_$AppDatabase, $RatingsTable> {
  $$RatingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.ColumnOrderings<String> get id => $composableBuilder(column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get rating => $composableBuilder(column: $table.rating, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => drift.ColumnOrderings(column));

  $$ProfilesTableOrderingComposer get profileId {
    final $$ProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableOrderingComposer get placeId {
    final $$PlacesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableOrderingComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableOrderingComposer get postId {
    final $$PostsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableOrderingComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RatingsTableAnnotationComposer extends drift.Composer<_$AppDatabase, $RatingsTable> {
  $$RatingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  drift.GeneratedColumn<String> get id => $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name => $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<double> get rating => $composableBuilder(column: $table.rating, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt => $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get updatedAt => $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$ProfilesTableAnnotationComposer get profileId {
    final $$ProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.profileId,
        referencedTable: $db.profiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$ProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.profiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PlacesTableAnnotationComposer get placeId {
    final $$PlacesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.placeId,
        referencedTable: $db.places,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PlacesTableAnnotationComposer(
              $db: $db,
              $table: $db.places,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PostsTableAnnotationComposer get postId {
    final $$PostsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.postId,
        referencedTable: $db.posts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, {$addJoinBuilderToRootComposer, $removeJoinBuilderFromRootComposer}) => $$PostsTableAnnotationComposer(
              $db: $db,
              $table: $db.posts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer: $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RatingsTableTableManager extends drift.RootTableManager<
    _$AppDatabase,
    $RatingsTable,
    Rating,
    $$RatingsTableFilterComposer,
    $$RatingsTableOrderingComposer,
    $$RatingsTableAnnotationComposer,
    $$RatingsTableCreateCompanionBuilder,
    $$RatingsTableUpdateCompanionBuilder,
    (Rating, $$RatingsTableReferences),
    Rating,
    drift.PrefetchHooks Function({bool profileId, bool placeId, bool postId})> {
  $$RatingsTableTableManager(_$AppDatabase db, $RatingsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () => $$RatingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () => $$RatingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => $$RatingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            drift.Value<String> profileId = const drift.Value.absent(),
            drift.Value<String?> placeId = const drift.Value.absent(),
            drift.Value<String?> postId = const drift.Value.absent(),
            drift.Value<String> name = const drift.Value.absent(),
            drift.Value<double> rating = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              RatingsCompanion(
            id: id,
            profileId: profileId,
            placeId: placeId,
            postId: postId,
            name: name,
            rating: rating,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            drift.Value<String> id = const drift.Value.absent(),
            required String profileId,
            drift.Value<String?> placeId = const drift.Value.absent(),
            drift.Value<String?> postId = const drift.Value.absent(),
            required String name,
            required double rating,
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<DateTime> updatedAt = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              RatingsCompanion.insert(
            id: id,
            profileId: profileId,
            placeId: placeId,
            postId: postId,
            name: name,
            rating: rating,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), $$RatingsTableReferences(db, table, e))).toList(),
          prefetchHooksCallback: ({profileId = false, placeId = false, postId = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <T extends drift.TableManagerState<dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic, dynamic>>(state) {
                if (profileId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.profileId,
                    referencedTable: $$RatingsTableReferences._profileIdTable(db),
                    referencedColumn: $$RatingsTableReferences._profileIdTable(db).id,
                  ) as T;
                }
                if (placeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.placeId,
                    referencedTable: $$RatingsTableReferences._placeIdTable(db),
                    referencedColumn: $$RatingsTableReferences._placeIdTable(db).id,
                  ) as T;
                }
                if (postId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.postId,
                    referencedTable: $$RatingsTableReferences._postIdTable(db),
                    referencedColumn: $$RatingsTableReferences._postIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$RatingsTableProcessedTableManager = drift.ProcessedTableManager<
    _$AppDatabase,
    $RatingsTable,
    Rating,
    $$RatingsTableFilterComposer,
    $$RatingsTableOrderingComposer,
    $$RatingsTableAnnotationComposer,
    $$RatingsTableCreateCompanionBuilder,
    $$RatingsTableUpdateCompanionBuilder,
    (Rating, $$RatingsTableReferences),
    Rating,
    drift.PrefetchHooks Function({bool profileId, bool placeId, bool postId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;

  $AppDatabaseManager(this._db);

  $$ProfilesTableTableManager get profiles => $$ProfilesTableTableManager(_db, _db.profiles);

  $$PlacesTableTableManager get places => $$PlacesTableTableManager(_db, _db.places);

  $$FollowsTableTableManager get follows => $$FollowsTableTableManager(_db, _db.follows);

  $$PostsTableTableManager get posts => $$PostsTableTableManager(_db, _db.posts);

  $$MediasTableTableManager get medias => $$MediasTableTableManager(_db, _db.medias);

  $$CommentsTableTableManager get comments => $$CommentsTableTableManager(_db, _db.comments);

  $$RatingsTableTableManager get ratings => $$RatingsTableTableManager(_db, _db.ratings);
}
