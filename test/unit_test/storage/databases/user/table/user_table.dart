import 'package:moor/moor.dart';

@DataClassName('User')
class UserTable extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get value => integer()();
}