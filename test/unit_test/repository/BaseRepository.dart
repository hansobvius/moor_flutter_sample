import 'dart:async';

abstract class BaseRepository<A, S, E>{

  A getDao();
  A get dao => getDao();

  S getService();
  S get storage => getService();
  Function (Future<List<E>>) callback;


  // Future<E> get<E>(Future<List<E>> onValue(S value), {Function onError});


  // void getDatabase({Function (Future<List<E>>) callback}){
  //   this.callback = callback;
  // }

  BaseRepository(A dao, S service){
    getAll(dao, storage);
  }

  Future<List<E>> getAll(A dao, S service);
}