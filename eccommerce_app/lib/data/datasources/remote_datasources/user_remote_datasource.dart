import 'package:eccommerce_app/data/models/user_model.dart';
import 'package:eccommerce_app/core/services/api_client.dart';

abstract class UserRemoteDatasource {
  Future<List<UserModel>> getUsers();
  Future<UserModel> getUserDetail(String id);
  Future<UserModel> addUser(UserModel user);
  Future<UserModel> updateUser(String id, UserModel user);
  Future<void> deleteUser(String id);
}

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final ApiClient apiClient;

  UserRemoteDatasourceImpl({required this.apiClient});

  @override
  Future<List<UserModel>> getUsers() async {
    final response = await apiClient.get('/users');
    final jsonList = response.data;
    return jsonList.map<UserModel>((json) => UserModel.fromJson(json)).toList();
  }

  @override
  Future<UserModel> getUserDetail(String id) async {
    final response = await apiClient.get('/users/$id');
    final json = response.data;
    return UserModel.fromJson(json);
  }

  @override
  Future<UserModel> addUser(UserModel user) async {
    final response = await apiClient.post('/users', data: user.toJson());
    final json = response.data;
    return UserModel.fromJson(json);
  }

  @override
  Future<UserModel> updateUser(String id, UserModel user) async {
    final response = await apiClient.put('/users/$id', data: user.toJson());
    final json = response.data;
    return UserModel.fromJson(json);
  }

  @override
  Future<void> deleteUser(String id) async {
    await apiClient.delete('/users/$id');
  }
}
