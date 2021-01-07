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

abstract class _$DatabaseTest extends GeneratedDatabase {
  _$DatabaseTest(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TableTestTable _tableTest;
  $TableTestTable get tableTest => _tableTest ??= $TableTestTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as DatabaseTest);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tableTest];
}