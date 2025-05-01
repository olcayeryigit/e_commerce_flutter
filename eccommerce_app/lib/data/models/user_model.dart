import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

//freezed ile modeller oluşturulduktan sonra dart run build_runner build --delete-conflicting-outputs komutu çalıştırılır
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String username,
    required String email,
    required String password,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(
    json,
  ); // '_$UserModelFromJson' otomatik olarak oluşturulacak
}
