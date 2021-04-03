// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DatabaseTest.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UserInfo extends DataClass implements Insertable<UserInfo> {
  final int id;
  final String image;
  final String title;
  final String description;
  UserInfo({@required this.id, this.image, this.title, this.description});
  factory UserInfo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return UserInfo(
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

  UserInfoTableCompanion toCompanion(bool nullToAbsent) {
    return UserInfoTableCompanion(
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

  factory UserInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserInfo(
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

  UserInfo copyWith({int id, String image, String title, String description}) =>
      UserInfo(
        id: id ?? this.id,
        image: image ?? this.image,
        title: title ?? this.title,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('UserInfo(')
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
      (other is UserInfo &&
          other.id == this.id &&
          other.image == this.image &&
          other.title == this.title &&
          other.description == this.description);
}

class UserInfoTableCompanion extends UpdateCompanion<UserInfo> {
  final Value<int> id;
  final Value<String> image;
  final Value<String> title;
  final Value<String> description;
  const UserInfoTableCompanion({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  UserInfoTableCompanion.insert({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  static Insertable<UserInfo> custom({
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

  UserInfoTableCompanion copyWith(
      {Value<int> id,
      Value<String> image,
      Value<String> title,
      Value<String> description}) {
    return UserInfoTableCompanion(
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
    return (StringBuffer('UserInfoTableCompanion(')
          ..write('id: $id, ')
          ..write('image: $image, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $UserInfoTableTable extends UserInfoTable
    with TableInfo<$UserInfoTableTable, UserInfo> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserInfoTableTable(this._db, [this._alias]);
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
  $UserInfoTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_info_table';
  @override
  final String actualTableName = 'user_info_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserInfo> instance,
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
  UserInfo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserInfo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserInfoTableTable createAlias(String alias) {
    return $UserInfoTableTable(_db, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final String genre;
  final int value;
  User({@required this.id, this.name, this.genre, this.value});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
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
      genre:
          genre == null && nullToAbsent ? const Value.absent() : Value(genre),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
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
      'genre': serializer.toJson<String>(genre),
      'value': serializer.toJson<int>(value),
    };
  }

  User copyWith({int id, String name, String genre, int value}) => User(
        id: id ?? this.id,
        name: name ?? this.name,
        genre: genre ?? this.genre,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('genre: $genre, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(genre.hashCode, value.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.genre == this.genre &&
          other.value == this.value);
}

class UserTableCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> genre;
  final Value<int> value;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.genre = const Value.absent(),
    this.value = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.genre = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<User> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> genre,
    Expression<int> value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (genre != null) 'genre': genre,
      if (value != null) 'value': value,
    });
  }

  UserTableCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> genre,
      Value<int> value}) {
    return UserTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
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
          ..write('genre: $genre, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable with TableInfo<$UserTableTable, User> {
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
  List<GeneratedColumn> get $columns => [id, name, genre, value];
  @override
  $UserTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_table';
  @override
  final String actualTableName = 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
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
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(_db, alias);
  }
}

class CompanyTable extends DataClass implements Insertable<CompanyTable> {
  final int id;
  final String name;
  CompanyTable({@required this.id, this.name});
  factory CompanyTable.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return CompanyTable(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
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
    return map;
  }

  CompanyDbTableCompanion toCompanion(bool nullToAbsent) {
    return CompanyDbTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory CompanyTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CompanyTable(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  CompanyTable copyWith({int id, String name}) => CompanyTable(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('CompanyTable(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, name.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CompanyTable && other.id == this.id && other.name == this.name);
}

class CompanyDbTableCompanion extends UpdateCompanion<CompanyTable> {
  final Value<int> id;
  final Value<String> name;
  const CompanyDbTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  CompanyDbTableCompanion.insert({
    @required int id,
    this.name = const Value.absent(),
  }) : id = Value(id);
  static Insertable<CompanyTable> custom({
    Expression<int> id,
    Expression<String> name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  CompanyDbTableCompanion copyWith({Value<int> id, Value<String> name}) {
    return CompanyDbTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyDbTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $CompanyDbTableTable extends CompanyDbTable
    with TableInfo<$CompanyDbTableTable, CompanyTable> {
  final GeneratedDatabase _db;
  final String _alias;
  $CompanyDbTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, true,
        defaultValue: Constant('company name are null'));
  }

  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  $CompanyDbTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'company_db_table';
  @override
  final String actualTableName = 'company_db_table';
  @override
  VerificationContext validateIntegrity(Insertable<CompanyTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  CompanyTable map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CompanyTable.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CompanyDbTableTable createAlias(String alias) {
    return $CompanyDbTableTable(_db, alias);
  }
}

class DepartmentTable extends DataClass implements Insertable<DepartmentTable> {
  final int id;
  final int parentId;
  final String name;
  DepartmentTable({@required this.id, @required this.parentId, this.name});
  factory DepartmentTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return DepartmentTable(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      parentId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}parent_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  DepartmentDbTableCompanion toCompanion(bool nullToAbsent) {
    return DepartmentDbTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory DepartmentTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DepartmentTable(
      id: serializer.fromJson<int>(json['id']),
      parentId: serializer.fromJson<int>(json['parentId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'parentId': serializer.toJson<int>(parentId),
      'name': serializer.toJson<String>(name),
    };
  }

  DepartmentTable copyWith({int id, int parentId, String name}) =>
      DepartmentTable(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('DepartmentTable(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(parentId.hashCode, name.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DepartmentTable &&
          other.id == this.id &&
          other.parentId == this.parentId &&
          other.name == this.name);
}

class DepartmentDbTableCompanion extends UpdateCompanion<DepartmentTable> {
  final Value<int> id;
  final Value<int> parentId;
  final Value<String> name;
  const DepartmentDbTableCompanion({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    this.name = const Value.absent(),
  });
  DepartmentDbTableCompanion.insert({
    @required int id,
    @required int parentId,
    this.name = const Value.absent(),
  })  : id = Value(id),
        parentId = Value(parentId);
  static Insertable<DepartmentTable> custom({
    Expression<int> id,
    Expression<int> parentId,
    Expression<String> name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentId != null) 'parent_id': parentId,
      if (name != null) 'name': name,
    });
  }

  DepartmentDbTableCompanion copyWith(
      {Value<int> id, Value<int> parentId, Value<String> name}) {
    return DepartmentDbTableCompanion(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DepartmentDbTableCompanion(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $DepartmentDbTableTable extends DepartmentDbTable
    with TableInfo<$DepartmentDbTableTable, DepartmentTable> {
  final GeneratedDatabase _db;
  final String _alias;
  $DepartmentDbTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  GeneratedIntColumn _parentId;
  @override
  GeneratedIntColumn get parentId => _parentId ??= _constructParentId();
  GeneratedIntColumn _constructParentId() {
    return GeneratedIntColumn(
      'parent_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, true,
        defaultValue: Constant('Department name are null'));
  }

  @override
  List<GeneratedColumn> get $columns => [id, parentId, name];
  @override
  $DepartmentDbTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'department_db_table';
  @override
  final String actualTableName = 'department_db_table';
  @override
  VerificationContext validateIntegrity(Insertable<DepartmentTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id'], _parentIdMeta));
    } else if (isInserting) {
      context.missing(_parentIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  DepartmentTable map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DepartmentTable.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DepartmentDbTableTable createAlias(String alias) {
    return $DepartmentDbTableTable(_db, alias);
  }
}

class EmployeeTable extends DataClass implements Insertable<EmployeeTable> {
  final int id;
  final int parentId;
  final String name;
  EmployeeTable({@required this.id, @required this.parentId, this.name});
  factory EmployeeTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return EmployeeTable(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      parentId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}parent_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  EmployeeDbTableCompanion toCompanion(bool nullToAbsent) {
    return EmployeeDbTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory EmployeeTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EmployeeTable(
      id: serializer.fromJson<int>(json['id']),
      parentId: serializer.fromJson<int>(json['parentId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'parentId': serializer.toJson<int>(parentId),
      'name': serializer.toJson<String>(name),
    };
  }

  EmployeeTable copyWith({int id, int parentId, String name}) => EmployeeTable(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('EmployeeTable(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(parentId.hashCode, name.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is EmployeeTable &&
          other.id == this.id &&
          other.parentId == this.parentId &&
          other.name == this.name);
}

class EmployeeDbTableCompanion extends UpdateCompanion<EmployeeTable> {
  final Value<int> id;
  final Value<int> parentId;
  final Value<String> name;
  const EmployeeDbTableCompanion({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    this.name = const Value.absent(),
  });
  EmployeeDbTableCompanion.insert({
    @required int id,
    @required int parentId,
    this.name = const Value.absent(),
  })  : id = Value(id),
        parentId = Value(parentId);
  static Insertable<EmployeeTable> custom({
    Expression<int> id,
    Expression<int> parentId,
    Expression<String> name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentId != null) 'parent_id': parentId,
      if (name != null) 'name': name,
    });
  }

  EmployeeDbTableCompanion copyWith(
      {Value<int> id, Value<int> parentId, Value<String> name}) {
    return EmployeeDbTableCompanion(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeDbTableCompanion(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $EmployeeDbTableTable extends EmployeeDbTable
    with TableInfo<$EmployeeDbTableTable, EmployeeTable> {
  final GeneratedDatabase _db;
  final String _alias;
  $EmployeeDbTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  GeneratedIntColumn _parentId;
  @override
  GeneratedIntColumn get parentId => _parentId ??= _constructParentId();
  GeneratedIntColumn _constructParentId() {
    return GeneratedIntColumn(
      'parent_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, true,
        defaultValue: Constant('employee name are null'));
  }

  @override
  List<GeneratedColumn> get $columns => [id, parentId, name];
  @override
  $EmployeeDbTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'employee_db_table';
  @override
  final String actualTableName = 'employee_db_table';
  @override
  VerificationContext validateIntegrity(Insertable<EmployeeTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id'], _parentIdMeta));
    } else if (isInserting) {
      context.missing(_parentIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  EmployeeTable map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return EmployeeTable.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $EmployeeDbTableTable createAlias(String alias) {
    return $EmployeeDbTableTable(_db, alias);
  }
}

abstract class _$DatabaseTest extends GeneratedDatabase {
  _$DatabaseTest(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UserInfoTableTable _userInfoTable;
  $UserInfoTableTable get userInfoTable =>
      _userInfoTable ??= $UserInfoTableTable(this);
  $UserTableTable _userTable;
  $UserTableTable get userTable => _userTable ??= $UserTableTable(this);
  $CompanyDbTableTable _companyDbTable;
  $CompanyDbTableTable get companyDbTable =>
      _companyDbTable ??= $CompanyDbTableTable(this);
  $DepartmentDbTableTable _departmentDbTable;
  $DepartmentDbTableTable get departmentDbTable =>
      _departmentDbTable ??= $DepartmentDbTableTable(this);
  $EmployeeDbTableTable _employeeDbTable;
  $EmployeeDbTableTable get employeeDbTable =>
      _employeeDbTable ??= $EmployeeDbTableTable(this);
  InfoTestDao _infoTestDao;
  InfoTestDao get infoTestDao =>
      _infoTestDao ??= InfoTestDao(this as DatabaseTest);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as DatabaseTest);
  CompanyDao _companyDao;
  CompanyDao get companyDao => _companyDao ??= CompanyDao(this as DatabaseTest);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        userInfoTable,
        userTable,
        companyDbTable,
        departmentDbTable,
        employeeDbTable
      ];
}
