
abstract class ISecureStorage {
  Future<void> setHiveKey(String value);
  Future<String?> getHiveKey();
}