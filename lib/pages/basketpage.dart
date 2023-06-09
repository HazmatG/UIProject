import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/customappbar.dart';
import '../widgets/popular_widgets.dart';
import 'MainMenu.dart';
import 'order_list_page.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: 2,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Главная'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Поиск'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: 'Корзина'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Аккаунт'),
        ],
      ),
      body: ListView(
        children: [
          CustomAppBar(),
          OrderCard(
            price: 490,
            name: 'Зеленый салат',
            image: ('lib/images/food5.png'),
            kg: 490,
          ),
          OrderCard(
            price: 490,
            name: 'Рулеты из ветчины',
            image: ('lib/images/food6.png'),
            kg: 490,
          ),
          OrderCard(
            price: 490,
            name: 'Рыба с овощами и рисом',
            image: ('lib/images/food9.png'),
            kg: 490,
          ),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Добавить в корзину'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    padding: EdgeInsets.symmetric(horizontal: 85, vertical: 15),
                  )))
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          print('Page 1');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MainMenu()));
          break;
        case 2:
          print('Page 2');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BasketPage()));
          break;
      }
    });
  }
}

class OrderCard extends StatelessWidget {
  OrderCard({
    required this.name,
    required this.image,
    required this.price,
    required this.kg,
    super.key,
  });

  String image;
  String name;
  int price;
  int kg;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        height: 80,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Image.asset(image),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Row(
                    children: [
                      Text('$price сом'),
                      SizedBox(width: 8),
                      Text(
                        '$kgг',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 30,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "-",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
              ),
              Text(
                '1',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 30,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "+",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ]));
  }
}
