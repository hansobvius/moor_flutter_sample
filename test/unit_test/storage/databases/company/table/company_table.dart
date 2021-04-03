import 'package:moor/moor.dart';

@DataClassName('CompanyTable')
class CompanyDbTable extends Table{

  IntColumn get id => integer()();
  TextColumn get name => text().nullable().withDefault(Constant('company name are null'))();
}