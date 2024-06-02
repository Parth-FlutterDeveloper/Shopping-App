import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              // Navigator.pushNamed(context, "/");   // also we can use this method
              Navigator.pop(context);   // pop method for back
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xFF4C53A5),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20),
            child: Text("Cart",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Color(0xFF4C53A5),
            ),),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Color(0xFF4C53A5),
            size: 28,
          )
        ],
      ),
    );
  }
}
