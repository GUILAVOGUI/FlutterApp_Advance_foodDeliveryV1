import 'package:flutter/material.dart';
import 'package:food_orderv1/scr/models/category.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Africans Food", image: "African_Dishes.png"),
  Category(name: "Deserts", image: "desert.png"),
  Category(name: "Fast Food", image: "fast_food.png"),
  Category(name: "Drink", image: "juice.png"),
  Category(name: "Salad", image: "salad.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(color: red, offset: Offset(2, 2), blurRadius: 20)
                  ]),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                    text: categoriesList[index].name,
                    size: 16,
                    color: black,
                    weight: FontWeight.normal)
              ],
            ),
          );
        },
      ),
    );
  }
}
