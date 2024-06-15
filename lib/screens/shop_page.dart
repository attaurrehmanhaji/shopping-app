import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    goBack(context);
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 60, horizontal: 10),
                    width: 50,
                    height: 50,
                    child: Icon(Icons.arrow_back_ios_new),
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.symmetric(vertical: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage("assets/logo.jpg")),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Padding(
                      //     padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30)),
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 60, horizontal: 10),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.menu)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.amber,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  void goBack(BuildContext context) {
    Navigator.pop(context); // Correctly call Navigator.pop with context
  }
}
