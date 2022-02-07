import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  final String id;
  final String title;
  CategoryItem(this.id, this.title);
  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  int selectCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 5,
      ),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.black,
        borderRadius: BorderRadius.circular(15),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 130,
              alignment: Alignment.center,
              child: Text(
                widget.title,
                textScaleFactor: 0.9,
                style: Theme.of(context).textTheme.headline6,
              ),
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
