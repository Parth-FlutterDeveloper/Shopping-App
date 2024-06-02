import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  int _itemCount = 1;

  List<String> itemName = ["Shoes","Wallet","Watch"];
  List<int> itemPrice = [69,39,89];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i=0; i<3; i++)
        Container(
          height: 115,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Row(
            children: [
              Radio(
                value: "",
                groupValue: "",
                onChanged: (index) {},
                activeColor: Color(0xFF4C53A5),
              ),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 15),
                child: Image.asset("cart_images/${i}.png"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${itemName[i]}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                    Text(
                      "\$ ${itemPrice[i]}",
                      style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0, right: 4.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 28,
                      ),
                    ),
                    Row(
                      children: [

                        InkWell(
                          onTap: () {
                            setState(() {
                              if(_itemCount > 0) {
                                _itemCount --;
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 8,
                                  spreadRadius: 3
                                ),
                              ]
                            ),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 20,
                              ),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "$_itemCount",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            setState(() {
                              _itemCount ++;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 8,
                                      spreadRadius: 3
                                  ),
                                ]
                            ),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.plus,
                                size: 20,
                              ),
                            ),
                          ),
                        ),

                      ],
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
