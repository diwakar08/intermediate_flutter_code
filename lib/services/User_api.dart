
import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import '../apis/ProductModel.dart';
import '../apis/orderModel.dart';
import 'package:http/http.dart' as http;

class UserApi {


  // get all orders API
  static Future fetchOrderData() async {

    // const url = "";
    // final uri = Uri.parse(url);
    // final response = await http.get(uri);
    // final body = response.body;
    // final json = jsonDecode(body);


    Map<String, dynamic> json = {
      "orderID": "101",
      "customerID": "1001",
      "sellerID": "1234",
      "productList": [
        {
          "productID": "111",
          "productName": "Product 1",
          "category": "Electronics",
          "subcategory": "laptop",
          "image": ["image1.jpg", "image2.jpg"],
          "description": "Description of Product 1",
          "quantityType": "Unit",
          "mrpPrice": "49.99",
          "offerPrice": "39.99",
          "productType": "Physical",
          "returnReplacement": {
            "returnStatus": true,
            "replacementStatus": false,
            "returnPeriod": "30",
            "replacementPeriod": "0",
          },
          "sellerID": "seller123",
          "created_at": "2023-09-18T08:00:00Z",
          "updated_at": "2023-09-18T10:00:00Z",
        },
        {
          "productID": "112",
          "productName": "Product 2",
          "category": "Clothing",
          "subcategory": "laptop",
          "image": ["image3.jpg", "image4.jpg"],
          "description": "Description of Product 2",
          "quantityType": "Piece",
          "mrpPrice": "29.99",
          "offerPrice": "24.99",
          "productType": "Physical",
          "returnReplacement": {
            "returnStatus": true,
            "replacementStatus": true,
            "returnPeriod": "30",
            "replacementPeriod": "30",
          },
          "sellerID": "seller456",
          "created_at": "2023-09-19T09:00:00Z",
          "updated_at": "2023-09-19T11:00:00Z",
        },
      ],
      "orderStatus": "new",
      "totalPrice": 1125.28,
      "payment": {
        "paymentID": "998",
        "paymentStatus": "paid",
        "paymentMode": "online",
        "paymentDate": "2023-09-23T15:30:00Z",
        "paymentAmount": 1125.28,
      },
    };
    Order order =  Order.fromJson(json);
    return order;
  }


  //create Product API
  static Future<void> createProduct(Product product) async {
    final apiUrl = 'https://api/seller/:sellerid/product';

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
        },
        body: jsonEncode(productJson),
      );

      // if (response.statusCode == 200) {
      // } else {
      // }
    } catch (e) {
    }
  }


  static Future<List<Product>> getProducts(id, token) async {
    print("idddd");
    print(id);
    print(token);
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