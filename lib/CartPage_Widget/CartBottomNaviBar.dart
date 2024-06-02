import 'package:flutter/material.dart';

class CartBottomNaviBar extends StatelessWidget {
  const CartBottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 120,
      surfaceTintColor: Colors.white,
      child: Container(
        height: 130,
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total :",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
                Text(
                  "\$250",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF4C53A5),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Text(
                "Check Out",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
