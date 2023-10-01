import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Dashboard extends StatefulWidget {
  final String token, id;
  const Dashboard({Key? key, required this.token, required this.id}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Pagem(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xfffcf5f4),
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "PKD",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
                 child: Icon(Icons.notifications,color: Colors.white,)),
            Expanded(child: Icon(Icons.shopping_cart_outlined,color: Colors.white,)),
            CircleAvatar(backgroundColor: Colors.red.shade100,backgroundImage: AssetImage('assets/images/avatar.png'),radius: 18,),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade900,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),




    );
  }



  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade500,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            )
                : const Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 4;
              });
            },
            icon: pageIndex == 4
                ? const Icon(
              Icons.shopping_cart_sharp,
              color: Colors.white,
              size: 25,
            )
                : const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.widgets_rounded,
              color: Colors.white,
              size: 25,
            )
                : const Icon(
              Icons.widgets_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.person,
              color: Colors.white,
              size: 25,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEBF1FD),

      child: Center(
        child: SingleChildScrollView(
          child: Column(

            children: [


              Container(
                color: Colors.lightBlue.shade900,
                child: Container(
                  height: 45,

                  margin: EdgeInsets.only(bottom: 10, top: 10, left: 15,right: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1,color: Colors.black),
                      borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    style: TextStyle(fontSize: 18,color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'search item...',
                      hintStyle: TextStyle(color: Colors.black45),
                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                height: 45,

                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade900,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                ),
                child: Center(child: Text('Free delivery on upto purchase of 99 >>',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'Poppins', ),)),
              ),

              Container(
                margin: EdgeInsets.only(right: 10, left: 10, top: 30,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Categores >',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5 ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 70,

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/c1.png'),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text('Daily',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5,left: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 70,

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/c2.png'),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text('oil',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5,left: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 70,

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/c3.png'),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text('fruit',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5,left: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 70,

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/c4.png'),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text('product',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5 ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 70,

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/c5.png'),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text('kitchen',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5,left: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 70,

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/c6.png'),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text('Milk',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5,left: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 70,

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/c2.png'),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text('powders',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5,left: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 80,
                          width: 70,

                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        'assets/images/c7.png'),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text('salt',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: CarouselSlider(
                  items: [

                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 150.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                    viewportFraction: 0.8,
                  ),
                ),
              ),

              Container(
                height: 150,
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      elevation: 5,
                      color: Colors.white,
                      child: Row(children: [

                        Expanded(child: Image(image: AssetImage('assets/images/rakhi.jpg'),fit: BoxFit.fill,))

                      ])),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 30),
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.green.shade100,
                  child: SizedBox(


                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 58,
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/c2.png"), //NetworkImage
                              radius: 50,
                            ), //CircleAvatar
                          ), //CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            '40% off on all products',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          ElevatedButton(
                            onPressed: () => 'Null',
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.touch_app,color: Colors.black,),
                                  Text('Visit',style: TextStyle(color: Colors.black),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Text(
                          'Verfied Products...',
                          style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'Poppins',
                              color: Colors.black87),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Image.asset(
                            'assets/images/ads.png'),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 150,

                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      elevation: 5,
                      color: Colors.white,
                      child: Row(children: [

                        Expanded(child: Image(image: AssetImage('assets/images/rakhi.jpg'),fit: BoxFit.fill,))

                      ])),
                ),
              ),
              Container(
                height: 200,

                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      elevation: 5,
                      color: Colors.white,
                      child: Row(children: [

                        Expanded(child: Image(image: AssetImage('assets/images/gro.jpeg'),fit: BoxFit.fill,))

                      ])),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 10,bottom: 20),
                child: CarouselSlider(
                  items: [

                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ads3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 150.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                    viewportFraction: 0.8,
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xfffcf5f4),
        child:   Container(
          color: Colors.red.shade600,
          child: Container(

            margin: EdgeInsets.only(bottom: 10, top: 10, left: 15,right: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1,color: Colors.black),
                borderRadius: BorderRadius.circular(40)),
            child: TextField(
              style: TextStyle(fontSize: 18,color: Colors.black),
              decoration: InputDecoration(
                hintText: 'search item...',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.black,),
                border: InputBorder.none,
              ),
            ),
          ),
        ),

    );
  }
}

class Pagem extends StatelessWidget {
  const Pagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfffcf5f4),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Add to cart",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 70,
              child: Image.asset(
                  'assets/images/human.png'),
            ),

          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xfffcf5f4),
        child:  GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2),
              ),
              height: 200,


              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/c3.png'),
                      )),
                  Expanded(
                      child: Text('Daily Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                      child: Text('499/-',
                          style: TextStyle(
                              color: Colors.blueGrey.shade900,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Icon(Icons.add_shopping_cart_outlined),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text('Buy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2),
              ),
              height: 200,


              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/c3.png'),
                      )),
                  Expanded(
                      child: Text('Daily Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                      child: Text('499/-',
                          style: TextStyle(
                              color: Colors.blueGrey.shade900,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Icon(Icons.add_shopping_cart_outlined),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text('Buy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2),
              ),
              height: 200,


              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/c3.png'),
                      )),
                  Expanded(
                      child: Text('Daily Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                      child: Text('499/-',
                          style: TextStyle(
                              color: Colors.blueGrey.shade900,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Icon(Icons.add_shopping_cart_outlined),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text('Buy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2),
              ),
              height: 200,


              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/c3.png'),
                      )),
                  Expanded(
                      child: Text('Daily Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                      child: Text('499/-',
                          style: TextStyle(
                              color: Colors.blueGrey.shade900,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Icon(Icons.add_shopping_cart_outlined),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text('Buy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2),
              ),
              height: 200,


              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/c3.png'),
                      )),
                  Expanded(
                      child: Text('Daily Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                      child: Text('499/-',
                          style: TextStyle(
                              color: Colors.blueGrey.shade900,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Icon(Icons.add_shopping_cart_outlined),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text('Buy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2),
              ),
              height: 200,


              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/c3.png'),
                      )),
                  Expanded(
                      child: Text('Daily Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                      child: Text('499/-',
                          style: TextStyle(
                              color: Colors.blueGrey.shade900,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Icon(Icons.add_shopping_cart_outlined),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text('Buy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2),
              ),
              height: 200,


              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/c3.png'),
                      )),
                  Expanded(
                      child: Text('Daily Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                      child: Text('499/-',
                          style: TextStyle(
                              color: Colors.blueGrey.shade900,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Icon(Icons.add_shopping_cart_outlined),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text('Buy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2),
              ),
              height: 200,


              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/c3.png'),
                      )),
                  Expanded(
                      child: Text('Daily Product',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                      child: Text('499/-',
                          style: TextStyle(
                              color: Colors.blueGrey.shade900,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold))),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Icon(Icons.add_shopping_cart_outlined),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 5,right: 2,bottom: 3),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(width: 1,color: Colors.black),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text('Buy',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        )

    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfffcf5f4),

    );
  }
}


// floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
// floatingActionButton: FloatingActionButton(
// // isExtended: true,
// child: Icon(Icons.message,color: Colors.white,),
// backgroundColor: Colors.red.shade600,
// onPressed: () {
//
// },
// ),

