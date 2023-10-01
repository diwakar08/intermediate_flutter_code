import 'dart:io';
import 'package:e_commerce/review_listed.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class UpdateProduct extends StatefulWidget {
  const UpdateProduct({Key? key}) : super(key: key);

  @override
  _UpdateProductState createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {

  bool viewMore = false;
  String viewML = 'View more categories';

  String dropdownQuantity = 'pic';
  String dropdownType = 'Not required';

  var items = [
    'gm',
    'ml',
    'pic',
  ];
  var items2 = [
    'Veg',
    'Non Veg',
    'Not required',
  ];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Update Product",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),


            CircleAvatar(backgroundColor: Colors.red.shade100,backgroundImage: AssetImage('assets/images/avatar.png'),radius: 18,),

          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      backgroundColor: Colors.grey.shade200,

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 35,

                decoration: BoxDecoration(
                    color: Colors.lightBlue.shade900,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                ),
                child: Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                      width: 73,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                      child: Center(child: Text('Update',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),

                    //Text('Add Product',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'Poppins', ),),
                  ],
                )),
              ),

              Container(
                height: 550,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10, left: 15, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Update',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Poppins',
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Image.asset('assets/images/c8.png'),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Text(
                          '     Image',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: Text(
                          'Category',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(18),
                              margin: EdgeInsets.only(top: 10,left: 20,bottom: 0),
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(13))
                              ),
                              child: Image.asset('assets/images/c1.png'),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(18),
                              margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(13))
                              ),
                              child: Image.asset('assets/images/c14.png'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(18),
                              margin: EdgeInsets.only(top: 10,left: 5,right:13,bottom: 0),
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(13))
                              ),
                              child: Image.asset('assets/images/c13.png'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(18),
                              margin: EdgeInsets.only(top: 10,bottom: 0,right: 20),
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(13))
                              ),
                              child: Image.asset('assets/images/c12.png'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
                                  child: Center(child: Text(' Grocery',style: TextStyle(fontSize: 13),)))
                          ),

                          Expanded(
                            child: Container(

                                margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                child: Center(child: Text('Cloth',style: TextStyle(fontSize: 13)))
                            ),
                          ),
                          Expanded(
                            child: Container(

                                margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
                                child: Center(child: Text('Kids',style: TextStyle(fontSize: 13)))
                            ),
                          ),
                          Expanded(
                            child: Container(
                                height: 35,

                                margin: EdgeInsets.only(bottom: 10,right: 20),
                                child: Center(child: Text('Electric',style: TextStyle(fontSize: 13)))
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(18),
                              margin: EdgeInsets.only(top: 0,left: 20,bottom: 0),
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.lightBlue.shade900),
                                  borderRadius: BorderRadius.all(Radius.circular(13))
                              ),
                              child: Image.asset('assets/images/c8.png'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(18),
                              margin: EdgeInsets.only(top: 0,left: 15,right:5,bottom: 0),
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(13))
                              ),
                              child: Image.asset('assets/images/c9.png'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(18),
                              margin: EdgeInsets.only(top: 0,left: 10,right: 10,bottom: 0),
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(13))
                              ),
                              child: Image.asset('assets/images/c10.png'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(18),
                              margin: EdgeInsets.only(top: 0,left: 5,right:20,bottom: 0),
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(13))
                              ),
                              child: Image.asset('assets/images/c11.png'),
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(

                                  margin: EdgeInsets.only(top: 5,left: 15,right:5,bottom: 10),
                                  child: Center(child: Text(' Accessories',style: TextStyle(fontSize: 13),)))
                          ),
                          Expanded(
                            child: Container(

                                margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
                                child: Center(child: Text('Home',style: TextStyle(fontSize: 13)))
                            ),
                          ),
                          Expanded(
                            child: Container(

                                margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                child: Center(child: Text('Food',style: TextStyle(fontSize: 13)))
                            ),
                          ),
                          Expanded(
                            child: Container(

                                margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
                                child: Center(child: Text('Beauty',style: TextStyle(fontSize: 13)))
                            ),
                          ),

                        ],
                      ),

                      Container(
                        height: 30,
                        width: double.maxFinite,
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                if(viewMore==false){
                                  viewMore = true;
                                  viewML = 'View less';
                                }else{
                                  viewMore = false;
                                  viewML = 'View more categories';
                                }

                              });
                            },
                            child: Text(
                              viewML,
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Colors.lightBlue.shade900,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 10,left: 20,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c1.png'),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c14.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 10,left: 5,right:13,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c13.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 10,bottom: 0,right: 20),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c12.png'),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
                                        child: Center(child: Text(' Grocery',style: TextStyle(fontSize: 13),)))
                                ),

                                Expanded(
                                  child: Container(

                                      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                      child: Center(child: Text('Cloth',style: TextStyle(fontSize: 13)))
                                  ),
                                ),
                                Expanded(
                                  child: Container(

                                      margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
                                      child: Center(child: Text('Kids',style: TextStyle(fontSize: 13)))
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 35,

                                      margin: EdgeInsets.only(bottom: 10,right: 20),
                                      child: Center(child: Text('Electric',style: TextStyle(fontSize: 13)))
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 0,left: 20,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c8.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 0,left: 15,right:5,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c9.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 0,left: 10,right: 10,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c10.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 0,left: 5,right:20,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c11.png'),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(

                                        margin: EdgeInsets.only(top: 5,left: 15,right:5,bottom: 10),
                                        child: Center(child: Text(' Accessories',style: TextStyle(fontSize: 13),)))
                                ),
                                Expanded(
                                  child: Container(

                                      margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
                                      child: Center(child: Text('Home',style: TextStyle(fontSize: 13)))
                                  ),
                                ),
                                Expanded(
                                  child: Container(

                                      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                      child: Center(child: Text('Food',style: TextStyle(fontSize: 13)))
                                  ),
                                ),
                                Expanded(
                                  child: Container(

                                      margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
                                      child: Center(child: Text('Beauty',style: TextStyle(fontSize: 13)))
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 0,left: 20,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c8.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 0,left: 15,right:5,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c9.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 0,left: 10,right: 10,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c10.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    margin: EdgeInsets.only(top: 0,left: 5,right:20,bottom: 0),
                                    height: 70,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(13))
                                    ),
                                    child: Image.asset('assets/images/c11.png'),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(

                                        margin: EdgeInsets.only(top: 5,left: 15,right:5,bottom: 10),
                                        child: Center(child: Text(' Accessories',style: TextStyle(fontSize: 13),)))
                                ),
                                Expanded(
                                  child: Container(

                                      margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
                                      child: Center(child: Text('Home',style: TextStyle(fontSize: 13)))
                                  ),
                                ),
                                Expanded(
                                  child: Container(

                                      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                      child: Center(child: Text('Food',style: TextStyle(fontSize: 13)))
                                  ),
                                ),
                                Expanded(
                                  child: Container(

                                      margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
                                      child: Center(child: Text('Beauty',style: TextStyle(fontSize: 13)))
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                        maintainSize: false,
                        maintainAnimation: true,
                        maintainState: true,
                        visible:  viewMore,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: Text(
                          'Accessories',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: Text(
                          'Product Name',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(


                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: TextField(
                          style: TextStyle(fontFamily: 'Poppins',fontSize: 15),
                          decoration: InputDecoration(

                            hintText: 'Mobile Cover Vivo Y11 modal 2019',

                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.teal.shade900
                                )
                            ),



                          ),

                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: Text(
                          'Price (Rs)',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(


                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: TextField(


                          style: TextStyle(fontFamily: 'Poppins',fontSize: 15),
                          decoration: InputDecoration(

                            hintText: '149',

                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.teal.shade900
                                )
                            ),



                          ),

                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 25),
                        child: Text(
                          'Offer Price',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(


                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: TextField(


                          style: TextStyle(fontFamily: 'Poppins',fontSize: 16),
                          decoration: InputDecoration(

                            hintText: '139',

                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.teal.shade900
                                )
                            ),



                          ),

                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 25),
                        child: Text(
                          'Quantity (ml/gm/pic)',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left: 20,right: 20),
                        child:  DropdownButton(

                          value: dropdownQuantity,

                          icon: const Icon(Icons.keyboard_arrow_down),

                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),

                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownQuantity = newValue!;
                            });
                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 25),
                        child: Text(
                          'Product Type (Veg/Non-veg,/in case if applicable)',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(


                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: DropdownButton(

                          value: dropdownType,

                          icon: const Icon(Icons.keyboard_arrow_down),

                          items: items2.map((String items2) {
                            return DropdownMenuItem(
                              value: items2,
                              child: Text(items2),
                            );
                          }).toList(),

                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownType = newValue!;
                            });
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              ),



              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 30),
                child: MaterialButton(onPressed: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewListed(),));
                }, child: Text('Save And Update',style: TextStyle(color: Colors.white,fontSize: 15),)
                  ,color: Colors.lightBlue.shade500,
                  height: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );


  }


}