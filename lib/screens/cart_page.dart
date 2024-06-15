import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui7_shopping_app/screens/shop_page.dart';

class CartPage extends StatefulWidget {
  final name;
  final price;
  final image;

  const CartPage(
      {super.key,
      required this.name,
      required this.price,
      required this.image});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "${widget.name}",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 136, 31, 66).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.menu,
                  color: Colors.pink.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.all(20),
                    height: 450,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Color(0xffA91D3A))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Text(
                              "T-Shirt Top  ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "${widget.price}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage(widget.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  height: 35,
                  width: 90,
                  child: Center(
                      child: Text("Size",
                          style: TextStyle(
                              color: Color(0xffA91D3A), fontSize: 18))),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: .9,
                      color: Color(0xffA91D3A),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Center(
                                child: Text("32",
                                    style: TextStyle(
                                        color: Color(0xffA91D3A),
                                        fontSize: 18))),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: .9,
                                color: Color(0xffA91D3A),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Center(
                                child: Text("33",
                                    style: TextStyle(
                                        color: Color(0xffA91D3A),
                                        fontSize: 18))),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: .9,
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Center(
                                child: Text("34",
                                    style: TextStyle(
                                        color: Color(0xffA91D3A),
                                        fontSize: 18))),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              border: Border.all(
                                width: .9,
                                color: Color(0xffA91D3A),
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Center(
                                child: Text("35",
                                    style: TextStyle(
                                        color: Color(0xffA91D3A),
                                        fontSize: 18))),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: .9,
                                color: Color(0xffA91D3A),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShopPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: 50,
                      // width: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffA91D3A),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
