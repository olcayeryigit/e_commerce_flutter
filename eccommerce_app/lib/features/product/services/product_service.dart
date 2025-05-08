import 'package:eccommerce_app/data/models/product_model.dart';
import 'package:eccommerce_app/features/product/repositories/product_repository.dart';

abstract class ProductService {
  Future<List<ProductModel>> getAllProducts();
  Future<ProductModel> getProductDetail(String id);
  Future<ProductModel> createProduct(ProductModel product);
  Future<ProductModel> removeProduct(String id);
  Future<ProductModel> updateProduct(String id, ProductModel product);
}

class ProductServiceImpl implements ProductService {
  final ProductRepository productRepository;

  ProductServiceImpl({required this.productRepository});

  @override
  Future<List<ProductModel>> getAllProducts() async {
    return await productRepository.fetchProducts();
  }

  @override
  Future<ProductModel> getProductDetail(String id) async {
    return await productRepository.fetchProductDetail(id);
  }

  @override
  Future<ProductModel> createProduct(ProductModel product) async {
    return await productRepository.addProduct(product);
  }

  @override
  Future<ProductModel> removeProduct(String id) async {
    return await productRepository.deleteProduct(id);
  }

  @override
  Future<ProductModel> updateProduct(String id, ProductModel product) async {
    return await productRepository.updateProduct(id, product);
  }
}
