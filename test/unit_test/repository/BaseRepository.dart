abstract class BaseRepository<A, S>{

  A getApi();
  A get api => getApi();

  S getStorage();
  S get storage => getStorage();

  BaseRepository(A api, S storage){
    getAll(api, storage);
  }

  getAll(A api, S storage);
}