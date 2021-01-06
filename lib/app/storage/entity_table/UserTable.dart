import 'package:moor/moor.dart';

@DataClassName("User")
class UserTable extends Table{

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get genre => text().nullable().withDefault(const Constant(''))();
  IntColumn get value => integer().nullable()();
}