import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 15,
        ),
        child: Row(
          children: [
            // for (int i = 0; i < 4; i++)
              CatWid(cardText: 'Все меню'),
              CatWid(cardText: 'Салаты'),
              CatWid(cardText: 'С рисом'),
              CatWid(cardText: 'С рыбой'),
          ],
        ),
      ),
    );
  }
}

class CatWid extends StatelessWidget {
  CatWid({
    super.key,
    required this.cardText,
  });

  String cardText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                  offset: Offset(1, 2))
            ]),
        child: Text(cardText, style: TextStyle()),
      ),
    );
  }
}
