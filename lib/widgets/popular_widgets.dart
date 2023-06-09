import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          children: [
            GridView(
                children: [
                  PopularCards(
                      name: 'Рис с овощами',
                      image: 'lib/images/food1.png'),
                  PopularCards(
                      name: 'Салат по восточному',
                      image: ('lib/images/food2.png')),
                  PopularCards(
                      name: 'Рыба с овощами и рисом',
                      image: ('lib/images/food3.png')),
                  PopularCards(
                      name: 'Тортеллини',
                      image: ('lib/images/food4.png')),
                  PopularCards(
                      name: 'Зеленый салат',
                      image: ('lib/images/food5.png')),
                  PopularCards(
                      name: 'Рулеты из ветчины',
                      image: 'lib/images/food6.png'),
                  PopularCards(
                      name: 'Рис с овощами',
                      image: 'lib/images/food7.png'),
                  PopularCards(
                      name: 'Салат по восточному',
                      image: ('lib/images/food8.png')),
                  PopularCards(
                      name: 'Рыба с овощами и рисом',
                      image: ('lib/images/food9.png')),
                  PopularCards(
                      name: 'Тортеллини',
                      image: ('lib/images/food4.png')),
                  PopularCards(
                      name: 'Зеленый салат',
                      image: ('lib/images/food5.png')),
                  PopularCards(
                      name: 'Рулеты из ветчины',
                      image: ('lib/images/food6.png')),
                ],
                scrollDirection: Axis.vertical,
                //default                 //default
                controller: ScrollController(),
                shrinkWrap: true,
                padding: EdgeInsets.all(5.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 5.0,
                )),
          ],
        ),
      ),
    );
  }
}

class PopularCards extends StatelessWidget {
  PopularCards({
    super.key,
    // required this.image,
    required this.name,
    required this.image,
  });

  // Image image;
  String name;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      child: Column(
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                    backgroundColor: Colors.white
                  ),
              onPressed: () {
                buildShowDialog(context);
              },
          child: Container(
                height: 80, // Set the desired height
                width: 80, // Set the desired width
                padding: EdgeInsets.all(10), // Set the desired padding
                child: Image.asset(
                  image,
                  fit: BoxFit.cover, // Adjust the image's fit
                ),
              ),))
              ),
          Text(name, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Future<String?> buildShowDialog(BuildContext context) {
    return showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    insetPadding: EdgeInsets.all(16),
                    actions: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              height: 220,
                              width: 270,
                              child: Image.asset(image, fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text('Рыба с овощами и рисом', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          ),
                          Row(
                            children: [
                              Text('799 сом', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                              SizedBox(width: 8),
                              Text('560г', style: TextStyle(color: Colors.grey, fontSize: 16),),
                            ],
                          ),
                          SizedBox(height: 6),
                          Text('Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная'
                              ' в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
                          style: TextStyle(fontSize: 14, color: Colors.grey[700], fontWeight: FontWeight.w400),),
                        ],
                      ),
                      SizedBox(height: 12),
                      Align(alignment: Alignment.center,child: ElevatedButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: Text('Добавить в корзину'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800],
                          padding: EdgeInsets.symmetric(horizontal: 85, vertical: 15),
                        )))
                    ],
                  ));
  }
}