import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro_1/ItemPage_Widget/ItemAppBar.dart';
import 'package:flutter_pro_1/ItemPage_Widget/ItemBottomNavBar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  int itemCount = 1;

  List<Color> Clrs = [
    Colors.red,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.purpleAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [

          ItemAppBar(),

          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
                "assets/images/0.png",
              height: 300,
            ),
          ),
          Arc(
              height: 30,
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              child: Container(
                width: double.infinity,
                color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 48,
                          bottom: 20,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Shoes",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Color(0xFF4C53A5)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 5,bottom: 6
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 25,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, index){
                                return Icon(
                                  Icons.star,
                                  color: Color(0xFF4C53A5),
                                );
                              },
                              onRatingUpdate: (index){},
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0,3),
                                        )
                                      ]
                                  ),
                                  child: InkWell(
                                    child: Icon(
                                        CupertinoIcons.plus,
                                      size: 20,
                                    ),
                                    onTap: (){
                                      setState(() {
                                        itemCount++;
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "$itemCount",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4C53A5)
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0,3),
                                      )
                                    ]
                                  ),
                                  child: InkWell(
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      size: 20,
                                    ),
                                    onTap: (){
                                      setState(() {
                                        if(itemCount>0)
                                        itemCount--;
                                      });
                                    },
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                            "Always in, always fresh. The Air Jordan 1 Low sets you up with a piece of Jordan history and heritage that's comfortable all day.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                            fontSize: 16
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Row(
                          children: [
                            Text(
                              "Size :",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [
                                for(int j=5; j<10; j++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        spreadRadius: 2,
                                        blurRadius: 6,
                                      ),
                                    ]
                                  ),
                                  child: Text(
                                    "$j",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xFF4C53A5)
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Text(
                              "Color :",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [
                                for(int j=0; j<5; j++)
                                  Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                        color: Clrs[j],
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black38,
                                            spreadRadius: 2,
                                            blurRadius: 6,
                                          ),
                                        ]
                                    ),
                                  )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
