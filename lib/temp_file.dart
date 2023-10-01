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


class ManageProductss extends StatefulWidget {
  const ManageProductss({Key? key}) : super(key: key);

  @override
  _ManageProductssState createState() => _ManageProductssState();
}

class _ManageProductssState extends State<ManageProductss> {
  bool _switchValue = false;
  String stock = 'In stock';

  bool isSelected = false;

  late Order order;
  late List<Product> product;
  String response1 = "";

  @override
  initState() {
    fetchOrders();
  }

  @override
  Widget build(BuildContext context) {

    Icon stockINorOut = Icon(Icons.circle_outlined,color: Colors.red.shade900,);

    return Scaffold(
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Products",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(child: Icon(Icons.add_circle_outline,color: Colors.white,)),
            CircleAvatar(backgroundColor: Colors.red.shade100,backgroundImage: AssetImage('assets/images/avatar.png'),radius: 18,),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      backgroundColor: Colors.white,

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                child: Row(

                  children: [
                    Expanded(
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
                                SizedBox(width: 20,),
                                Icon(Icons.sort,color: Colors.black ),
                                SizedBox(width: 10,),
                                Text('Sort',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Poppins',

                                    )),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
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
                                SizedBox(width: 20,),
                                Icon(Icons.filter_alt_outlined,color: Colors.black ),
                                SizedBox(width: 10,),
                                Text('Filter',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
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
              ),

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
                                                        fontSize: 18,
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
                                          Image.asset('assets/images/c7.png',height: 150 ),
                                          Column(
                                            children: [
                                              Expanded(

                                                child: Center(
                                                  child: Text('Daily Use',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontFamily: 'Poppins',

                                                      )),
                                                ),
                                              ),
                                              Expanded(

                                                child: Text('sub category',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                      fontFamily: 'Poppins',
                                                    )),
                                              ),
                                              Expanded(

                                                child:  Text('MRP.₹25',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontFamily: 'Poppins',
                                                        decoration: TextDecoration.lineThrough
                                                    )),
                                              ),
                                            ],
                                          ),

                                          SizedBox(width: 50,),

                                          Text('₹19',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold)),

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
                                                child: Text(response1,
                                                    style: TextStyle(
                                                        color: Colors.green.shade900,
                                                        fontSize: 18,
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
                                                }, child: Text('Update',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),),
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
                                                        fontSize: 18,
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
                                          Image.asset('assets/images/c7.png',height: 150 ),
                                          Column(
                                            children: [
                                              Expanded(

                                                child: Center(
                                                  child: Text('Daily Use',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontFamily: 'Poppins',

                                                      )),
                                                ),
                                              ),
                                              Expanded(

                                                child: Text('sub category',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                      fontFamily: 'Poppins',
                                                    )),
                                              ),
                                              Expanded(

                                                child:  Text('MRP.₹25',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontFamily: 'Poppins',
                                                        decoration: TextDecoration.lineThrough
                                                    )),
                                              ),
                                            ],
                                          ),

                                          SizedBox(width: 50,),

                                          Text('₹19',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold)),

                                        ],
                                      ),
                                    ),

                                    Expanded(

                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex:2,
                                              child: Container(
                                                margin: EdgeInsets.only(left: 20),
                                                child: Text('Salt',
                                                    style: TextStyle(
                                                        color: Colors.green.shade900,
                                                        fontSize: 18,
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
                                                }, child: Text('Update',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),),
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
                                                        fontSize: 18,
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
                                          Image.asset('assets/images/c7.png',height: 150 ),
                                          Column(
                                            children: [
                                              Expanded(

                                                child: Center(
                                                  child: Text('Daily Use',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontFamily: 'Poppins',

                                                      )),
                                                ),
                                              ),
                                              Expanded(

                                                child: Text('sub category',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                      fontFamily: 'Poppins',
                                                    )),
                                              ),
                                              Expanded(

                                                child:  Text('MRP.₹25',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontFamily: 'Poppins',
                                                        decoration: TextDecoration.lineThrough
                                                    )),
                                              ),
                                            ],
                                          ),

                                          SizedBox(width: 50,),

                                          Text('₹19',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold)),

                                        ],
                                      ),
                                    ),

                                    Expanded(

                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex:2,
                                              child: Container(
                                                margin: EdgeInsets.only(left: 20),
                                                child: Text('Salt',
                                                    style: TextStyle(
                                                        color: Colors.green.shade900,
                                                        fontSize: 18,
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
                                                }, child: Text('Update',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),),
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
                                                        fontSize: 18,
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
                                          Image.asset('assets/images/c7.png',height: 150 ),
                                          Column(
                                            children: [
                                              Expanded(

                                                child: Center(
                                                  child: Text('Daily Use',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontFamily: 'Poppins',

                                                      )),
                                                ),
                                              ),
                                              Expanded(

                                                child: Text('sub category',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                      fontFamily: 'Poppins',
                                                    )),
                                              ),
                                              Expanded(

                                                child:  Text('MRP.₹25',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontFamily: 'Poppins',
                                                        decoration: TextDecoration.lineThrough
                                                    )),
                                              ),
                                            ],
                                          ),

                                          SizedBox(width: 50,),

                                          Text('₹19',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold)),

                                        ],
                                      ),
                                    ),

                                    Expanded(

                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex:2,
                                              child: Container(
                                                margin: EdgeInsets.only(left: 20),
                                                child: Text('Salt',
                                                    style: TextStyle(
                                                        color: Colors.green.shade900,
                                                        fontSize: 18,
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
                                                }, child: Text('Update',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),),
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
        ),
      ),
    );


  }

  void fetchOrders() async {
    product = await UserApi.getProducts(id);

    setState(() {
      response1 = product[0].productName;
    });
    print(response1);
  }

}
