import 'package:moor/moor.dart';

abstract class BaseDao<T extends DataClass>{
  Future insert(T table);
  Future<List<T>>   getAll();
  Future deleteAll(T table);
  Stream<List<T>> watchAll();
}