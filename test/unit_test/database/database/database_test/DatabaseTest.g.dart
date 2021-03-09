// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DatabaseTest.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class table extends DataClass implements Insertable<table> {
  final int id;
  final String name;
  final int value;
  table({@required this.id, @required this.name, @required this.value});
  factory table.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return table(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
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
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<int>(value);
    }
    return map;
  }

  TableTestCompanion toCompanion(bool nullToAbsent) {
    return TableTestCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory table.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return table(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      value: serializer.fromJson<int>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'value': serializer.toJson<int>(value),
    };
  }

  table copyWith({int id, String name, int value}) => table(
        id: id ?? this.id,
        name: name ?? this.name,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('table(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(name.hashCode, value.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is table &&
          other.id == this.id &&
          other.name == this.name &&
          other.value == this.value);
}

class TableTestCompanion extends UpdateCompanion<table> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> value;
  const TableTestCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.value = const Value.absent(),
  });
  TableTestCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required int value,
  })  : name = Value(name),
        value = Value(value);
  static Insertable<table> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<int> value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (value != null) 'value': value,
    });
  }

  TableTestCompanion copyWith(
      {Value<int> id, Value<String> name, Value<int> value}) {
    return TableTestCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
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
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TableTestCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $TableTestTable extends TableTest with TableInfo<$TableTestTable, table> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableTestTable(this._db, [this._alias]);
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
      false,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedIntColumn _value;
  @override
  GeneratedIntColumn get value => _value ??= _constructValue();
  GeneratedIntColumn _constructValue() {
    return GeneratedIntColumn(
      'value',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, value];
  @override
  $TableTestTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_test';
  @override
  final String actualTableName = 'table_test';
  @override
  VerificationContext validateIntegrity(Insertable<table> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  table map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return table.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TableTestTable createAlias(String alias) {
    return $TableTestTable(_db, alias);
  }
}

class TestInfo extends DataClass implements Insertable<TestInfo> {
  final int id;
  final String image;
  final String title;
  final String description;
  TestInfo({@required this.id, this.image, this.title, this.description});
  factory TestInfo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return TestInfo(
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

  InfoTestTableCompanion toCompanion(bool nullToAbsent) {
    return InfoTestTableCompanion(
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

  factory TestInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TestInfo(
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

  TestInfo copyWith({int id, String image, String title, String description}) =>
      TestInfo(
        id: id ?? this.id,
        image: image ?? this.image,
        title: title ?? this.title,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('TestInfo(')
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
      (other is TestInfo &&
          other.id == this.id &&
          other.image == this.image &&
          other.title == this.title &&
          other.description == this.description);
}

class InfoTestTableCompanion extends UpdateCompanion<TestInfo> {
  final Value<int> id;
  final Value<String> image;
  final Value<String> title;
  final Value<String> description;
  const InfoTestTableCompanion({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  InfoTestTableCompanion.insert({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  static Insertable<TestInfo> custom({
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

  InfoTestTableCompanion copyWith(
      {Value<int> id,
      Value<String> image,
      Value<String> title,
      Value<String> description}) {
    return InfoTestTableCompanion(
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
    return (StringBuffer('InfoTestTableCompanion(')
          ..write('id: $id, ')
          ..write('image: $image, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $InfoTestTableTable extends InfoTestTable
    with TableInfo<$InfoTestTableTable, TestInfo> {
  final GeneratedDatabase _db;
  final String _alias;
  $InfoTestTableTable(this._db, [this._alias]);
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
  $InfoTestTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'info_test_table';
  @override
  final String actualTableName = 'info_test_table';
  @override
  VerificationContext validateIntegrity(Insertable<TestInfo> instance,
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
  TestInfo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TestInfo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $InfoTestTableTable createAlias(String alias) {
    return $InfoTestTableTable(_db, alias);
  }
}

abstract class _$DatabaseTest extends GeneratedDatabase {
  _$DatabaseTest(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TableTestTable _tableTest;
  $TableTestTable get tableTest => _tableTest ??= $TableTestTable(this);
  $InfoTestTableTable _infoTestTable;
  $InfoTestTableTable get infoTestTable =>
      _infoTestTable ??= $InfoTestTableTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as DatabaseTest);
  InfoTestDao _infoTestDao;
  InfoTestDao get infoTestDao =>
      _infoTestDao ??= InfoTestDao(this as DatabaseTest);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [tableTest, infoTestTable];
}
