// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppDatabase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UserDatabase extends DataClass implements Insertable<UserDatabase> {
  final int id;
  final String name;
  final String lastName;
  final String genre;
  final int value;
  UserDatabase(
      {@required this.id, this.name, this.lastName, this.genre, this.value});
  factory UserDatabase.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return UserDatabase(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      lastName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name']),
      genre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}genre']),
      value: intType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || genre != null) {
      map['genre'] = Variable<String>(genre);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<int>(value);
    }
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      genre:
          genre == null && nullToAbsent ? const Value.absent() : Value(genre),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory UserDatabase.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserDatabase(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      lastName: serializer.fromJson<String>(json['lastName']),
      genre: serializer.fromJson<String>(json['genre']),
      value: serializer.fromJson<int>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'lastName': serializer.toJson<String>(lastName),
      'genre': serializer.toJson<String>(genre),
      'value': serializer.toJson<int>(value),
    };
  }

  UserDatabase copyWith(
          {int id, String name, String lastName, String genre, int value}) =>
      UserDatabase(
        id: id ?? this.id,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        genre: genre ?? this.genre,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('UserDatabase(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('genre: $genre, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(name.hashCode,
          $mrjc(lastName.hashCode, $mrjc(genre.hashCode, value.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UserDatabase &&
          other.id == this.id &&
          other.name == this.name &&
          other.lastName == this.lastName &&
          other.genre == this.genre &&
          other.value == this.value);
}

class UserTableCompanion extends UpdateCompanion<UserDatabase> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> lastName;
  final Value<String> genre;
  final Value<int> value;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName = const Value.absent(),
    this.genre = const Value.absent(),
    this.value = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName = const Value.absent(),
    this.genre = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<UserDatabase> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> lastName,
    Expression<String> genre,
    Expression<int> value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (lastName != null) 'last_name': lastName,
      if (genre != null) 'genre': genre,
      if (value != null) 'value': value,
    });
  }

  UserTableCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> lastName,
      Value<String> genre,
      Value<int> value}) {
    return UserTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      genre: genre ?? this.genre,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (genre.present) {
      map['genre'] = Variable<String>(genre.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('genre: $genre, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserDatabase> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  GeneratedTextColumn _lastName;
  @override
  GeneratedTextColumn get lastName => _lastName ??= _constructLastName();
  GeneratedTextColumn _constructLastName() {
    return GeneratedTextColumn(
      'last_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _genreMeta = const VerificationMeta('genre');
  GeneratedTextColumn _genre;
  @override
  GeneratedTextColumn get genre => _genre ??= _constructGenre();
  GeneratedTextColumn _constructGenre() {
    return GeneratedTextColumn('genre', $tableName, true,
        defaultValue: const Constant(''));
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedIntColumn _value;
  @override
  GeneratedIntColumn get value => _value ??= _constructValue();
  GeneratedIntColumn _constructValue() {
    return GeneratedIntColumn(
      'value',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, lastName, genre, value];
  @override
  $UserTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_table';
  @override
  final String actualTableName = 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserDatabase> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name'], _lastNameMeta));
    }
    if (data.containsKey('genre')) {
      context.handle(
          _genreMeta, genre.isAcceptableOrUnknown(data['genre'], _genreMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserDatabase map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserDatabase.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(_db, alias);
  }
}

class InfoUserDatabase extends DataClass
    implements Insertable<InfoUserDatabase> {
  final int id;
  final String image;
  final String title;
  final String description;
  InfoUserDatabase(
      {@required this.id, this.image, this.title, this.description});
  factory InfoUserDatabase.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return InfoUserDatabase(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      image:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}image']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  InfoUserTableCompanion toCompanion(bool nullToAbsent) {
    return InfoUserTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory InfoUserDatabase.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return InfoUserDatabase(
      id: serializer.fromJson<int>(json['id']),
      image: serializer.fromJson<String>(json['image']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'image': serializer.toJson<String>(image),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
    };
  }

  InfoUserDatabase copyWith(
          {int id, String image, String title, String description}) =>
      InfoUserDatabase(
        id: id ?? this.id,
        image: image ?? this.image,
        title: title ?? this.title,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('InfoUserDatabase(')
          ..write('id: $id, ')
          ..write('image: $image, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(image.hashCode, $mrjc(title.hashCode, description.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is InfoUserDatabase &&
          other.id == this.id &&
          other.image == this.image &&
          other.title == this.title &&
          other.description == this.description);
}

class InfoUserTableCompanion extends UpdateCompanion<InfoUserDatabase> {
  final Value<int> id;
  final Value<String> image;
  final Value<String> title;
  final Value<String> description;
  const InfoUserTableCompanion({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  InfoUserTableCompanion.insert({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  static Insertable<InfoUserDatabase> custom({
    Expression<int> id,
    Expression<String> image,
    Expression<String> title,
    Expression<String> description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (image != null) 'image': image,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
    });
  }

  InfoUserTableCompanion copyWith(
      {Value<int> id,
      Value<String> image,
      Value<String> title,
      Value<String> description}) {
    return InfoUserTableCompanion(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InfoUserTableCompanion(')
          ..write('id: $id, ')
          ..write('image: $image, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $InfoUserTableTable extends InfoUserTable
    with TableInfo<$InfoUserTableTable, InfoUserDatabase> {
  final GeneratedDatabase _db;
  final String _alias;
  $InfoUserTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  GeneratedTextColumn _image;
  @override
  GeneratedTextColumn get image => _image ??= _constructImage();
  GeneratedTextColumn _constructImage() {
    return GeneratedTextColumn(
      'image',
      $tableName,
      true,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, true,
        defaultValue: const Constant(''));
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, true,
        defaultValue: const Constant(''));
  }

  @override
  List<GeneratedColumn> get $columns => [id, image, title, description];
  @override
  $InfoUserTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'info_user_table';
  @override
  final String actualTableName = 'info_user_table';
  @override
  VerificationContext validateIntegrity(Insertable<InfoUserDatabase> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image'], _imageMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InfoUserDatabase map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return InfoUserDatabase.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $InfoUserTableTable createAlias(String alias) {
    return $InfoUserTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UserTableTable _userTable;
  $UserTableTable get userTable => _userTable ??= $UserTableTable(this);
  $InfoUserTableTable _infoUserTable;
  $InfoUserTableTable get infoUserTable =>
      _infoUserTable ??= $InfoUserTableTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as AppDatabase);
  InfoUserDao _infoUserDao;
  InfoUserDao get infoUserDao =>
      _infoUserDao ??= InfoUserDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userTable, infoUserTable];
}
