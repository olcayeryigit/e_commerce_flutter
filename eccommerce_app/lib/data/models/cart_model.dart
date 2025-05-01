import 'package:eccommerce_app/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

//freezed ile modeller oluşturulduktan sonra dart run build_runner build --delete-conflicting-outputs komutu çalıştırılır
@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required int id,
    required int userId,
    required List<ProductModel> products,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
