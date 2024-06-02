import 'package:flutter/material.dart';

class ItemAppBar extends StatefulWidget {
  const ItemAppBar({super.key});

  @override
  State<ItemAppBar> createState() => _ItemAppBarState();
}

class _ItemAppBarState extends State<ItemAppBar> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xFF4C53A5),
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF4C53A5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: (){
              setState(() {
                selected = !selected;
              });
            },
            child: Icon(
              selected == false ? Icons.favorite_border : Icons.favorite,
              color: Colors.red,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}




