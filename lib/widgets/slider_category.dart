import 'package:flutter/material.dart';
import '/util/app_data.dart';
import '../widgets/category_item.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(
          top: 5,
          bottom: 10,
          right: 20,
        ),
        
        scrollDirection: Axis.horizontal,
        children: Categories_data.map(
          (categoryData) => CategoryItem(
            categoryData.id,
            categoryData.title,
          ),
        ).toList(),
      ),
    );
  }
}
