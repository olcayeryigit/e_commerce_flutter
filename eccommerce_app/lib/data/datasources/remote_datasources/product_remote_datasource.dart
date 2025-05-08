import 'package:dio/dio.dart';
import 'package:eccommerce_app/data/models/product_model.dart';
import 'package:eccommerce_app/core/services/api_client.dart';

/// Bu soyut sınıf (abstract), dış dünyadan ürün verisini getirecek olan metotların
/// hangi sözleşmelerle çalışması gerektiğini belirtir.
/// Uygulamanın başka bir yerinde sadece bu interface üzerinden erişim sağlanır.
abstract class ProductRemoteDataSource {
  /// Tüm ürünleri getirir

  Future<List<ProductModel>> fetchProducts();

  /// Belirli bir ürünün detayını getirir (id’ye göre)

  Future<ProductModel> fetchProductDetail(String id);

  /// Ürün ekler

  Future<ProductModel> addProduct(ProductModel product);

  /// Idsi verilen ürünü siler
  Future<ProductModel> deleteProduct(String id);

  /// Idsi verilen ürünü günceller

  Future<ProductModel> updateProduct(String id, ProductModel product);
}

/// Gerçek API çağrılarını gerçekleştiren sınıf.
/// Yukarıdaki abstract sınıfı (interface) implement eder.
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ApiClient apiClient;

  /// ApiClient, constructor ile dışarıdan alınır (dependency injection).
  ProductRemoteDataSourceImpl({required this.apiClient});

  /// Tüm ürünleri sunucudan çeker.
  /// GET isteği yapılır: /products
  /// Dönen response içindeki JSON listesi, ProductModel nesnelerine dönüştürülür.
  @override
  Future<List<ProductModel>> fetchProducts() async {
    // API'den veriyi çeker
    final response = await apiClient.get('/products');
    // Gelen response'dan JSON listesi alınır
    final List<dynamic> jsonList = response.data;
    // JSON listesindeki her bir öğe ProductModel'e dönüştürülür

    return jsonList.map((json) => ProductModel.fromJson(json)).toList();
  }

  /// Belirli bir ürünün detay bilgilerini getirir.
  /// /products/{id} endpointine GET isteği gönderilir.
  @override
  Future<ProductModel> fetchProductDetail(String id) async {
    // API'den tek bir ürün detayı çekilir

    final response = await apiClient.get('/products/$id');
    final json = response.data;
    // Gelen JSON, ProductModel nesnesine dönüştürülür

    return ProductModel.fromJson(json);
  }

  /// Belirli bir ürünü ekler
  @override
  Future<ProductModel> addProduct(ProductModel product) async {
    final response = await apiClient.post('/products', data: product.toJson());
    final json = response.data;
    return ProductModel.fromJson(json);
  }

  /// Belirli bir ürünü siler
  @override
  Future<ProductModel> deleteProduct(String id) async {
    final response = await apiClient.delete('/products/$id');
    final json = response.data;
    return ProductModel.fromJson(json);
  }

  @override
  Future<ProductModel> updateProduct(String id, ProductModel product) async {
    final response = await apiClient.put('/products/$id');
    final json = response.data;
    return ProductModel.fromJson(json);
  }
}
