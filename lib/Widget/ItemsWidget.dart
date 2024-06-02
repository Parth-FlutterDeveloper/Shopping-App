import 'package:flutter/material.dart';

class ItemsWidget extends StatefulWidget {
  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  // late bool faourit = false;
  List<String> productsNames = ["Shoes","Watch","Wallet","Shoes","Watch","Wallet","Shoes"];
  List<int> productsPrice = [69,99,39,59,89,29,109];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.67,
      physics: NeverScrollableScrollPhysics(), // used for disable scroll of widgets
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        for(int j=0; j<7; j++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  Icon(
                      Icons.favorite_border,
                    color: Colors.red,
                  ),
                  // IconButton(
                  //   icon: Icon(faourit == false ? Icons.favorite_border : Icons.favorite),
                  //   color: Colors.red,
                  //   onPressed: (){
                  //     faourit = !faourit;
                  //   },
                  // ),
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                      "assets/images/$j.png",
                    height: 110,
                    width: 110,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("${productsNames[j]}",style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5)
                ),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Write description of product",style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF4C53A5),
                ),),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("\$${productsPrice[j]}",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)
                      ),),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Color(0xFF4C53A5),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
