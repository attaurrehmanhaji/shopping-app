import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui7_shopping_app/screens/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List images = [
    "assets/tshirt.jpeg",
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.jpg",
    "assets/7.jpg",
  ];
  List names = [
    "Blue T shirt",
    "Black T shirt",
    "Green T shirt",
    "Grey T shirt",
    "Orange T shirt",
    "Purple T shirt",
    "White Grey T shirt",
    "White T shirt",
  ];
  List price = [
    "Rs. 120",
    "Rs. 130",
    "Rs. 140",
    "Rs. 150",
    "Rs. 130",
    "Rs. 200",
    "Rs. 210",
    "Rs. 220",
  ];
  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    double hightOfScreen = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "T-Shirt Shop",
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
                color: const Color.fromARGB(255, 136, 31, 66).withOpacity(0.1),
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 2,
          childAspectRatio: 0.6,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: hightOfScreen * .5,
                  // width: widthOfScreen * .1,
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffA91D3A),
                        ),
                      ),

                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: myFavIcon(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              // 'assets/tshirt.jpeg',
                              images[index],
                              height: hightOfScreen * .1,
                              width: widthOfScreen * .2,
                              // fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      // "T-Shirt",
                                      names[index],
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                        color: Color(0xffA91D3A),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // child:
                      //     myFavIcon(images: images, names: names, price: price),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CartPage(
                                  image: images[index],
                                  name: names[index],
                                  price: price[index],
                                )),
                      );
                    },
                    child: Container(
                      height: 45,

                      // width: double.infinity,
                      width: 150,
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
          );
        },
      ),
    );
  }
}

class myFavIcon extends StatefulWidget {
  const myFavIcon({
    tooltip = "Navigator",
    super.key,
  });

  @override
  State<myFavIcon> createState() => _myFavIconState();
}

bool isFav = false;

class _myFavIconState extends State<myFavIcon> {
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isFav = !isFav;
          });
        },
        child: Icon(
          Icons.favorite,
          // color: isFav ? Color(0xffA91D3A) : Color.fromARGB(133, 240, 239, 239),
          color: isFav ? Color(0xffA91D3A) : Colors.grey,
        ));
  }
}
