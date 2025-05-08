import 'package:eccommerce_app/data/models/product_model.dart';
import 'package:eccommerce_app/data/datasources/remote_datasources/product_remote_datasource.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> fetchProducts();
  Future<ProductModel> fetchProductDetail(String id);
  Future<ProductModel> addProduct(ProductModel product);
  Future<ProductModel> deleteProduct(String id);
  Future<ProductModel> updateProduct(String id, ProductModel product);
}

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl({required this.productRemoteDataSource});

  @override
  Future<List<ProductModel>> fetchProducts() async {
    return await productRemoteDataSource.fetchProducts();
  }

  @override
  Future<ProductModel> fetchProductDetail(String id) async {
    return await productRemoteDataSource.fetchProductDetail(id);
  }

  @override
  Future<ProductModel> addProduct(ProductModel product) async {
    return await productRemoteDataSource.addProduct(product);
  }

  @override
  Future<ProductModel> deleteProduct(String id) async {
    return await productRemoteDataSource.deleteProduct(id);
  }

  @override
  Future<ProductModel> updateProduct(String id, ProductModel product) async {
    return await productRemoteDataSource.updateProduct(id, product);
  }
}
