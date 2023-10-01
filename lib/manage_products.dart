import 'dart:io';

import 'package:e_commerce/update_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'add_product.dart';
import 'main.dart';

import './services/User_api.dart';
import './apis/orderModel.dart';
import './apis/ProductModel.dart';


class ManageProducts extends StatefulWidget {
  final String token, id;
  const ManageProducts({Key? key, required this.token, required this.id}) : super(key: key);

  @override
  _ManageProductsState createState() => _ManageProductsState();
}

class _ManageProductsState extends State<ManageProducts> {
  bool _switchValue = false;
  String stock = 'In stock';

  bool isSelected = false;

  late Order order;
  late List<Product> product;
  String response1 = "";

  @override
  initState() {
    fetchOrders(widget.id, widget.token);
  }

  @override
  Widget build(BuildContext context) {
    final token = widget.token;
    final id = widget.id;
    Icon stockINorOut = Icon(Icons.circle_outlined,color: Colors.red.shade900,);

    return Scaffold(
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 50,
                margin: EdgeInsets.all(5),
                child:
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.black,width: 1),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38.withOpacity(0.5), //color of shadow
                        blurRadius: 7, // blur radius

                      ),
                      //you can set more BoxShadow() here
                    ],


                  ),
                  margin: EdgeInsets.only( bottom: 5),

                  child: TextField(
                    style: TextStyle(fontSize: 15,color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'search',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                margin: EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.black,width: 1),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38.withOpacity(0.5), //color of shadow
                        blurRadius: 7, // blur radius

                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  margin: EdgeInsets.only( bottom: 5),

                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.sort,color: Colors.black ),
                        Text('Sort',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',

                            )),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                margin: EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.black,width: 1),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38.withOpacity(0.5), //color of shadow
                        blurRadius: 7, // blur radius

                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  margin: EdgeInsets.only( bottom: 5),

                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.filter_alt_outlined,color: Colors.black ),
                        Text('Filter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',

                            )),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      //  centerTitle: true,
        backgroundColor: Colors.lightBlue.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      backgroundColor: Colors.white,

      body:
      FutureBuilder<List<Product>>(
        future: fetchOrders(id, token),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final List<Product>? data = snapshot.data;

            return
                  Container(

                    child: ListView.builder(
                     // scrollDirection: Axis.horizontal,
                      itemCount: data?.length,
                      itemBuilder: (context, index) {
                        final prod = data?[index];
                        return Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 5, top: 5, left: 11,right: 10),

                                        child: SingleChildScrollView(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child:
                                                Container(

                                                  height: 150,

                                                  margin: EdgeInsets.only(bottom: 10, top: 10, left: 10),
                                                  child: Column(

                                                    children: [
                                                      Expanded(
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [

                                                            CupertinoSwitch(
                                                              activeColor: Colors.red,
                                                              value: _switchValue,
                                                              onChanged: (value) {
                                                                setState(() {

                                                                  _switchValue = value;
                                                                  stock = 'out of stock';

                                                                });
                                                              },
                                                            ),
                                                            Expanded(
                                                                flex:2,
                                                                child: Container(

                                                                  margin: EdgeInsets.only(left: 20),
                                                                  child: Text(stock,
                                                                      style: TextStyle(
                                                                          color: Colors.green.shade900,
                                                                          fontSize: 13,
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.bold
                                                                      )),
                                                                )),
                                                            Icon(Icons.delete,color: Colors.red.shade900,size: 30,),
                                                          ],
                                                        ),
                                                      ),

                                                      SizedBox(height: 10,),
                                                      Expanded(
                                                        flex: 3,
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Image.asset('assets/images/c7.png',height: 150,width: 80, ),
                                                            Column(
                                                              children: [
                                                                Expanded(

                                                                  child: Center(
                                                                    child: Text(prod!.category,
                                                                        style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 15,
                                                                          fontFamily: 'Poppins',

                                                                        )),
                                                                  ),
                                                                ),
                                                                Expanded(

                                                                  child: Text(prod!.subcategory,
                                                                      style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 13,
                                                                        fontFamily: 'Poppins',
                                                                      )),
                                                                ),

                                                              ],
                                                            ),

                                                            SizedBox(width: 50,),

                                                            Column(
                                                              children: [
                                                                Expanded(

                                                                  child:  Text('₹${prod!.mrpPrice.toString()}',
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 16,
                                                                          fontFamily: 'Poppins',
                                                                          decoration: TextDecoration.lineThrough
                                                                      )),
                                                                ),
                                                                // Text('₹${prod!.offerPrice.toString()}',
                                                                //     style: TextStyle(
                                                                //         color: Colors.black,
                                                                //         fontSize: 20,
                                                                //         fontFamily: 'Poppins',
                                                                //         fontWeight: FontWeight.bold)),
                                                              ],
                                                            ),

                                                          ],
                                                        ),
                                                      ),

                                                      Expanded(

                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                                flex:2,
                                                                child: Container(
                                                                  // margin: EdgeInsets.only(left: 20),
                                                                  child: Text(prod!.productName,
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 15,
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.bold
                                                                      )),
                                                                )),
                                                            Expanded(

                                                              child:  Container(

                                                                child: MaterialButton(
                                                                  color: Colors.lightBlue.shade400,
                                                                  onPressed: (){
                                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProduct(),));
                                                                  }, child: Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                                Container(height: .5,color: Colors.black,),
                              ],
                            ),

                          );

                      },
                    ),
                  );

          }
        },
      )
    );
  }
  Future<List<Product>> fetchOrders(id, token) async {
    final data = await UserApi.getProducts(id, token);
    return data;
  }
}
