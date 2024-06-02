import 'package:flutter/material.dart';
import 'package:flutter_pro_1/CartPage_Widget/CartAppBar.dart';
import 'package:flutter_pro_1/CartPage_Widget/CartItem.dart';
import 'package:flutter_pro_1/CartPage_Widget/CartBottomNaviBar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          CartAppBar(),

          Container(
            height: 630,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [

                CartItem(),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF4C53A5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                            Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Add Coupon Code",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                            fontSize: 16
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNaviBar(),
    );
  }
}
