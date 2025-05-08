import 'package:eccommerce_app/data/datasources/local_datasources/auth_local_datasource.dart';
import 'package:eccommerce_app/data/datasources/remote_datasources/auth_remote_datasource.dart';

abstract class AuthRepository {
  Future<String> login(String username, String password);
  Future<void> logout();
  Future<String?> getToken();
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl({
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });

  @override
  Future<String> login(String username, String password) async {
    final token = await authRemoteDataSource.login(username, password);
    await authLocalDataSource.cacheToken(token);
    return token;
  }

  @override
  Future<void> logout() async {
    await authLocalDataSource.removeToken();
  }

  @override
  Future<String?> getToken() async {
    return await authLocalDataSource.getCachedToken();
  }
}
