import 'package:flutter/material.dart';
import 'package:food_orderv1/scr/helpers/style.dart';
import 'package:food_orderv1/scr/widgets/bottom_navigation_icons.dart';
import 'package:food_orderv1/scr/widgets/categories.dart';
import 'package:food_orderv1/scr/widgets/custom_text.dart';
import 'package:food_orderv1/scr/widgets/featured_products.dart';
import 'package:food_orderv1/scr/widgets/small_floating_button.dart';
import '../helpers/style.dart';

import '../widgets/custom_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What would you Like to eat?",
                    size: 18,
                    color: black,
                    weight: FontWeight.normal,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        onPressed: () => {},
                        icon: Icon(Icons.notifications_none)),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(color: grey, offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find Food and Restaurant",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                  text: "Featured",
                  size: 20,
                  color: grey,
                  weight: FontWeight.normal),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                  text: "Popular",
                  size: 20,
                  color: grey,
                  weight: FontWeight.normal),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('images/africandishes1.jpg')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow[900],
                                    size: 20,
                                  ),
                                ),
                                Text('4.5')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          // Box decoration takes a gradient
                          gradient: LinearGradient(
                            //where the linear gradient begins and ends
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              //Colors are easy
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.05),
                              Colors.black.withOpacity(0.025),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Pancakes \n",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: white),
                              ),
                              TextSpan(
                                text: "by: ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: white),
                              ),
                              TextSpan(
                                text: "Pizza hut",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: white),
                              )
                            ], style: TextStyle(color: black)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "\$12.99 \n",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: white),
                              )
                            ], style: TextStyle(color: black)),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 66,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BottomNavIcon(image: 'home2.png', name: 'Home'),
            BottomNavIcon(image: 'target2.png', name: 'NearBy'),
            BottomNavIcon(image: 'shopping_cart2.png', name: 'Cart'),
            BottomNavIcon(image: 'profile2.png', name: 'Account'),
          ],
        ),
      ),
    );
  }
}
