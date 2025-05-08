import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eccommerce_app/data/models/cart_model.dart';
import 'package:eccommerce_app/core/services/api_client.dart';

abstract class CartRemoteDatasource {
  Future<List<CartModel>> getCarts();
  Future<CartModel> getCartDetail(String id);
  Future<CartModel> addCart(CartModel cart);
  Future<CartModel> deleteCart(String id);
  Future<CartModel> updateCart(String id, CartModel cart);
}

class CartRemoteDatasourceImpl implements CartRemoteDatasource {
  final ApiClient apiClient;
  CartRemoteDatasourceImpl({required this.apiClient});

  @override
  Future<CartModel> addCart(CartModel cart) async {
    final response = await apiClient.post('/carts');
    final json = response.data;

    return CartModel.fromJson(json);
  }

  @override
  Future<CartModel> deleteCart(String id) async {
    final response = await apiClient.delete('/carts/$id');
    final json = response.data;
    return CartModel.fromJson(json);
  }

  @override
  Future<CartModel> getCartDetail(String id) async {
    final response = await apiClient.get('carts/$id');
    final json = response.data;
    return CartModel.fromJson(json);
  }

  @override
  Future<List<CartModel>> getCarts() async {
    final response = await apiClient.get('/carts');
    final jsonList = response.data;
    return jsonList.map((json) => CartModel.fromJson(json)).toList();
  }

  @override
  Future<CartModel> updateCart(String id, CartModel cart) async {
    final response = await apiClient.put('/carts', data: cart.toJson());
    final json = response.data;
    return CartModel.fromJson(json);
  }
}
