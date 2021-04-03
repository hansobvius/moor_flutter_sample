import 'package:moor/moor.dart';

@DataClassName('EmployeeTable')
class EmployeeDbTable extends Table{

  IntColumn get id => integer()();
  IntColumn get parentId => integer()();
  TextColumn get name => text().nullable().withDefault(Constant('employee name are null'))();
}