import 'package:drift/drift.dart';

abstract class BaseDao<T extends DataClass>{
  Future insert(Insertable<T> table);
  Future<List<T>?> getAll();
  Future deleteAll(T table);
  Stream<List<T>>? watchAll();
}