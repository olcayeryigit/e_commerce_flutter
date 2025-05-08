import 'package:eccommerce_app/core/services/api_client.dart';

abstract class AuthRemoteDataSource {
  Future<String> login(String username, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<String> login(String username, String password) async {
    final response = await apiClient.post(
      '/auth/login',
      data: {'username': username, 'password': password},
    );

    final token = response.data; // API'den dönen token
    return token;
  }
}
