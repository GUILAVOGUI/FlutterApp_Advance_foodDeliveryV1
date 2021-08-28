// ignore: import_of_legacy_library_into_null_safe;

// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food_orderv1/scr/helpers/style.dart';
import 'package:food_orderv1/scr/models/products.dart';
import 'package:food_orderv1/scr/widgets/custom_text.dart';
import 'package:food_orderv1/scr/widgets/small_floating_button.dart';

class Details extends StatefulWidget {
  final Product product;

  Details({required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(children: [
                Carousel(
                  images: [
                    AssetImage('images/${widget.product.image}'),
                    AssetImage('images/${widget.product.image}'),
                    AssetImage('images/${widget.product.image}'),
                  ],
                  // dotBgColor: white,
                  dotColor: white,
                  dotIncreasedColor: red,
                  dotIncreaseSize: 1.7,
                  autoplay: false,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                      color: black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Stack(
                        children: [
                          Container(
                            height: 55,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 19),
                              child: Image.asset(
                                "images/shopping_cart2.png",
                                width: 27,
                                height: 27,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            top: 24,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: grey,
                                          offset: Offset(2, 3),
                                          blurRadius: 5)
                                    ]),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: CustomText(
                                      text: "2",
                                      size: 18,
                                      color: red,
                                      weight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  right: 20,
                  bottom: 59,
                  child: Container(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: grey, offset: Offset(2, 3), blurRadius: 3)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.favorite,
                        size: 16,
                        color: red,
                      ),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
