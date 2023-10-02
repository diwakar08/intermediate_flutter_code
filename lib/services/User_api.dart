
import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import '../apis/ProductModel.dart';
import '../apis/Seller.dart';
import '../apis/orderModel.dart';
import 'package:http/http.dart' as http;

class UserApi {


  static Future mostSelling() async {

  }
  static Future recentListed() async {

  }

  static Future registerPhone(var phone, var otp) async {
    final apiUrl = 'https://api.pehchankidukan.com/api/seller/register';

    Map<String, dynamic> json = {
      "phone":phone,
      "otp":otp,
    };
    var uri = Uri.parse(apiUrl);
    try {
      final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(json),
      );

      if (response.statusCode == 200) {
      } else {
      }
    } catch (e) {
    }


  }


  //get seller data
  static Future getSeller(token, id) async {
    final apiUrl = "api.pehchankidukan.com/seller/$id";
    var uri = Uri.parse(apiUrl);
    try {
      final response = await http.get(uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authentication': 'Bearer $token'
        },
      );
      final body  = response.body;
      final json = jsonDecode(body);
      Seller seller = Seller.fromJson(json);
      return seller;
    } catch (e){

    }

  }

  // get all orders API
  static Future fetchOrderData(token, id) async {
    final apiUrl = "api.pehchankidukan.com/seller/$id/orders";
    final uri = Uri.parse(apiUrl);
    final response = await http.get(uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authentication': 'Bearer $token'
      },
    );
    final body = response.body;
    final json = jsonDecode(body);
    Order order =  Order.fromJson(json);
    return order;
  }


  //create Product API
  static Future<void> createProduct(Product product, token, id) async {
    final apiUrl = 'https://api.pehchankidukan.com/seller/$id/product';

    final Map<String, dynamic> productJson = {
      "productName": product.productName,
      "category": product.category,
      "subcategory": product.subcategory,
      "image": product.image,
      "description": product.description,
      "quantityType": product.quantityType,
      "mrpPrice": product.mrpPrice,
      // "offerPrice": product.offerPrice,
      "productType": product.productType,
    };
    var uri = Uri.parse(apiUrl);
    try {
      final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authentication': 'Bearer $token'
        },
        body: jsonEncode(productJson),
      );

      if (response.statusCode == 200) {
      } else {
      }
    } catch (e) {
    }
  }

  //update Product AP
  static Future<void> updateProduct(Product product, token, id) async {
    final apiUrl = 'https://api.pehchankidukan.com/seller/$id/product';

    final Map<String, dynamic> productJson = {
      "productName": product.productName,
      "category": product.category,
      "image": product.image,
      "description": product.description,
      "quantityType": product.quantityType,
      "mrpPrice": product.mrpPrice,
      // "offerPrice": product.offerPrice,
      "productType": product.productType,
    };
    var uri = Uri.parse(apiUrl);
    try {
      final response = await http.put(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authentication': 'Bearer $token'
        },
        body: jsonEncode(productJson),
      );

      if (response.statusCode == 200) {
        final data = response.body;
        return jsonDecode(data);
      } else {
      }
    } catch (e) {
    }
  }


  static Future<List<Product>> getProducts(id, token) async {
    // print("idddd");
    // print(id);
    // print(token);
    final uri = Uri.parse('https://api.pehchankidukan.com/seller/$id/products');
    final response = await http.get(uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
    );
    final body = response.body;
    final productJson = jsonDecode(body);


    // List<Product> product = productJson['data'].map((e) => Product.fromJson(e)).toList();
    List<Product> products = List<Product>.from(productJson['data'].map((e) => Product.fromJson(e)));
    return products;
  }
}