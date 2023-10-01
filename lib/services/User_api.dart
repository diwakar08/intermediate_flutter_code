
import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import '../apis/ProductModel.dart';
import '../apis/Seller.dart';
import '../apis/orderModel.dart';
import 'package:http/http.dart' as http;

class UserApi {


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

      // if (response.statusCode == 201) {
      // } else {
      // }
    } catch (e) {
    }


  }


  //get seller data
  static Future getSeller() async {
    final json = {
      "ownerName": "John Doe",
      "password": "hashed_password_here",
      "phone": "1234567890",
      "businessType": "Retail",
      "shopName": "John's Store",
      "shopOpeningTime": "2023-09-18T08:00:00Z",
      "shopClosingTime": "2023-09-18T08:00:00Z",
      "landlineNumber": "4875834759",
      "gstin": {
        "gstinNo": "GSTIN123456",
        "gstinImage": "gstin_image_url"
      },
      "fssai": {
        "licenseNumber": "FSSAI123456",
        "fssaiImage": "fssai_image_url"
      },
      "photo": "seller_photo_url",
      "address": {
        "addressOfShop": "Apt 456",
        "city": "Example City",
        "state": "Example State",
        "pincode": "12345",
        "location": "Latitude: 12.345, Longitude: 67.890"
      },
      "panCard": {
        "panNo": "ABCDE1234F",
        "panImage": "pan_card_image_url"
      },
      "bankDetails": {
        "accountNo": "1234567890",
        "ifscCode": "IFSC12345",
        "bankName": "Example Bank",
        "branchName": "Example Branch",
        "passbookImage": "bank_passbook_image_url"
      },
      "marginCharged": 10.5,
      "shopCategory": "Electronics",
      "createdAt": "2023-09-18T08:00:00Z",
      "updatedAt": "2023-09-19T09:00:00Z"
    };
    Seller seller = Seller.fromJson(json);
    return seller;
  }

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

  //update Product AP
  static Future<void> updateProduct(Product product) async {
    final apiUrl = 'https://api/seller/:sellerid/product';

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
        },
        body: jsonEncode(productJson),
      );

      // if (response.statusCode == 201) {
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