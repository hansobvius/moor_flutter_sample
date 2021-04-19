abstract class BaseRepository<A, S, E>{

  A getDao();
  A get dao => getDao();

  S getService();
  S get storage => getService();

  BaseRepository(A dao, S service){
    getAll(dao, storage);
  }

  Future<List<E>> getAll(A dao, S service);
}