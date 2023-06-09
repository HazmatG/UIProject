import 'package:flutter/material.dart';
import 'package:untitled2/pages/MainMenu.dart';
import 'package:untitled2/pages/basketpage.dart';
import 'pages/order_list_page.dart';
import 'package:flutter/services.dart' ;

void main()=>runApp(FoodApp());

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/menu',
      routes: {
        '/orderlist' : (context) => const OrderListPage(),
        '/basket' : (context) => const BasketPage(),
        '/menu' : (context) => const MainMenu(),
        // '/map' : (context) => const FoodListPage(),
      },
    );
  }
}
