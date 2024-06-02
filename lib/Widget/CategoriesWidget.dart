import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  List<String> categoriesName = ["Shoes","Watch","Wallet","Shoes","Watch","Wallet","Shoes"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=0; i<7; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset(
                  // use i variable to change the images in a loop
                  "assets/images/$i.png",
                  width: 40,
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("${categoriesName[i]}",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF4C53A5),
                  ),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
