


abstract class ILoginService {
  Future<bool> login(Map<String,dynamic> request);

  Future<bool> addToBox<T>(String key, T? value);

  Future<T> getFromBox<T>(String key);
  
}