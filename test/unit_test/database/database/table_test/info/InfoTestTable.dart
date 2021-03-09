import 'package:moor/moor.dart';

@DataClassName('TestInfo')
class InfoTestTable extends Table{

  IntColumn get id => integer().autoIncrement()();
  TextColumn get image => text().nullable()();
  TextColumn get title => text().nullable().withDefault(const Constant(''))();
  TextColumn get description => text().nullable().withDefault(const Constant(''))();
}