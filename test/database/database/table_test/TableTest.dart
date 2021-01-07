import 'package:moor/moor.dart';

@DataClassName('table')
class TableTest extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get value => integer()();
}