import 'package:moor/moor.dart';

@DataClassName('DepartmentTable')
class DepartmentDbTable extends Table{

  IntColumn get id => integer()();
  IntColumn get parentId => integer()();
  TextColumn get name => text().nullable().withDefault(Constant('Department name are null'))();
}