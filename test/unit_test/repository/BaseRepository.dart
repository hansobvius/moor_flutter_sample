abstract class BaseRepository<A, S>{

  A getDao();
  A get dao => getDao();

  S getService();
  S get storage => getService();

  BaseRepository(A dao, S service){
    getAll(dao, storage);
  }

  getAll(A dao, S service);
}