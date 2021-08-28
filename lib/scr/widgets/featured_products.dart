import 'package:flutter/material.dart';
import 'package:food_orderv1/scr/models/products.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Product> productsList = [
  Product(
      name: "Cereal",
      image: "1.png",
      rating: 3.6,
      vendor: "GoodFood",
      wishList: true,
      price: 5.99),
  Product(
      name: "Taccos",
      image: "5.png",
      rating: 2.6,
      vendor: "GoodFood",
      wishList: false,
      price: 13.66),
  Product(
      name: "desert",
      image: "2.png",
      rating: 2,
      vendor: "GoodFood",
      wishList: true,
      price: 15.99)
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[50],
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(color: grey, offset: Offset(1, 1), blurRadius: 4)
                  ]),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: [
                          Image.asset(
                            "images/${productsList[index].image}",
                            height: 140,
                            width: 140,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomText(
                                    text: productsList[index].name,
                                    size: 20,
                                    color: black,
                                    weight: FontWeight.normal),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: grey,
                                            offset: Offset(1, 1),
                                            blurRadius: 4)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: productsList[index].wishList
                                        ? Icon(
                                            Icons.favorite,
                                            size: 17,
                                            color: red,
                                          )
                                        : Icon(
                                            Icons.favorite_border,
                                            size: 17,
                                            color: red,
                                          ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: CustomText(
                                        text: productsList[index]
                                            .rating
                                            .toString(),
                                        size: 13,
                                        color: Colors.grey,
                                        weight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: grey,
                                    size: 16,
                                  ),
                                ],
                              ),
                              CustomText(
                                  text: "\$${productsList[index].price}",
                                  size: 16,
                                  color: black,
                                  weight: FontWeight.bold)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
