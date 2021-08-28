import 'package:flutter/material.dart';

import '../helpers/style.dart';
import 'custom_text.dart';

class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;

  const BottomNavIcon({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/$image',
            width: 20,
            height: 20,
          ),
          SizedBox(
            height: 5,
          ),
          CustomText(
              text: name, size: 16, color: black, weight: FontWeight.normal)
        ],
      ),
    );
  }
}
