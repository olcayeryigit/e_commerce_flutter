/*api_client.dart dosyası, uygulamanın dış dünya ile (genellikle bir sunucu ile) haberleşmesini sağlayacak olan temel API istemcisini içerir. Bu dosyada, genellikle Dio paketini kullanarak HTTP isteklerini yöneteceksin. Bu istemci, API çağrılarını yapmayı kolaylaştıran bir sınıf olarak işlev görür. */

import 'package:dio/dio.dart';
import 'package:eccommerce_app/core/constants/app_constants.dart';
import 'package:eccommerce_app/core/error/api_error.dart';

class ApiClient {
  final Dio _dio;
  //Dio Temel ayarları

  ApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: AppConstants.baseUrl,
          connectTimeout: const Duration(seconds: 5), // Bağlantı zaman aşımı
          receiveTimeout: const Duration(seconds: 3), // Veri alma zaman aşımı
        ),
      );

  // Genel GET isteği
  Future<Response> get(
    String endpoint, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: queryParams);
      return response;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  //Genel POST isteği
  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  //Genel PUT isteği
  Future<Response> put(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  //Genel DELETE isteği
  Future<Response> delete(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.delete(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  //API HATA YÖNETİMİ
  dynamic _handleError(DioException e) {
    //Hata türüne göre özel mesaj dönderelim
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ApiError(message: "Bağlantı zaman aşımına uğradı");
      case DioExceptionType.sendTimeout:
        return ApiError(message: "Veri gönderme zaman aşımına uğradı");
      case DioExceptionType.receiveTimeout:
        return ApiError(message: "Veri alma zaman aşımına uğradı");
      case DioExceptionType.badResponse:
        return ApiError(
          message: 'Sunucudan gelen hata: ${e.response?.statusCode}',
        );
      case DioExceptionType.cancel:
        return ApiError(message: "İstek iptal edildi");
      case DioExceptionType.unknown:
      default:
        return ApiError(message: "Bilinmeyen bir hata oluştu.");
    }
  }
}
