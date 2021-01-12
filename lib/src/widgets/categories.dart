import 'package:flutter/material.dart';
import 'package:food_order/src/commons.dart';
import 'package:food_order/src/models/category.dart';
import 'package:food_order/src/widgets/custom_text.dart';

List<Category> categoriesList = [
  Category(name: 'Momo', image: 'momo.jpg'),
  Category(name: 'Chowmein', image: 'chowmein.jpg'),
  Category(name: 'Pizza', image: 'pizza.jpeg'),
  Category(name: 'Sekuwa', image: 'sekuwa.jpeg'),
  Category(name: 'Burger', image: 'burger.jpeg'),
  Category(name: 'Momo', image: 'momo.jpg'),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[50],
                        offset: Offset(7, 6),
                        blurRadius: 30,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 14,
                  colors: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
