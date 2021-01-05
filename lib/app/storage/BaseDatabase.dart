import 'package:moor/moor.dart';

abstract class BaseDatabase{
  tableMigration(TableInfo table, GeneratedColumn column);
}