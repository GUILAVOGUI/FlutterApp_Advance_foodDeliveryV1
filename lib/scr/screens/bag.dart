import 'package:flutter/material.dart';
import 'package:food_orderv1/scr/helpers/style.dart';
import 'package:food_orderv1/scr/models/products.dart';
import 'package:food_orderv1/scr/widgets/custom_text.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product = Product(
      name: "Cereal",
      image: "1.png",
      rating: 3.6,
      vendor: "GoodFood",
      wishList: true,
      price: 5.99,
      details:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, minima magni, exercitationem debitis atque tempora natus labore dolorem velit nisi fugit perspiciatis alias fuga illo. Fuga eos nam voluptates pariatur! ");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: black,
          ),
          onPressed: () {},
        ),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
            text: "Shopping Bag",
            size: 16,
            color: black,
            weight: FontWeight.normal),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "images/shopping_cart.png",
                    width: 30,
                    height: 30,
                  ),
                ),
                Positioned(
                  right: 7,
                  bottom: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: grey, offset: Offset(2, 3), blurRadius: 3)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: CustomText(
                          text: "2",
                          size: 18,
                          color: red,
                          weight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      backgroundColor: white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              // width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(color: red, offset: Offset(3, 7), blurRadius: 33)
                ],
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "images/${product.image}",
                    height: 120,
                    width: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: product.name + "\n",
                                style: TextStyle(color: black, fontSize: 22),
                              ),
                              TextSpan(
                                text: "\$" + product.price.toString() + "\n",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 117,
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
