import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheToken(String token); // Token'ı cache eder
  Future<String?> getCachedToken(); // Token'ı cache'den alır
  Future<void> removeToken(); // Token'ı cache'den siler
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  @override
  Future<void> cacheToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'auth_token',
      token,
    ); // Token'ı 'auth_token' anahtarıyla kaydeder
  }

  @override
  Future<String?> getCachedToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(
      'auth_token',
    ); // 'auth_token' anahtarıyla kaydedilen token'ı alır
  }

  @override
  Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token'); // Token'ı siler
  }
}
