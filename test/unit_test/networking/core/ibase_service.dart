abstract class IBaseService<T, M>{
  T getService();
  T get service => getService();
  Future<List<M>> getServiceData();
}
