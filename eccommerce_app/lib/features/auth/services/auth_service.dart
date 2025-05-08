import 'package:eccommerce_app/features/auth/repositories/auth_repository.dart';

abstract class AuthService {
  Future<String> login(String username, String password);
  Future<void> logout();
  Future<String?> getToken();
}

class AuthServiceImpl implements AuthService {
  final AuthRepository authRepository;

  AuthServiceImpl({required this.authRepository});

  @override
  Future<String> login(String username, String password) async {
    return await authRepository.login(username, password);
  }

  @override
  Future<void> logout() async {
    await authRepository.logout();
  }

  @override
  Future<String?> getToken() async {
    return await authRepository.getToken();
  }
}
