import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './widgets/screens/product_details_screen.dart';

import './widgets/screens/products_overview_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
          subtitle1: TextStyle().copyWith(
            color: Colors.black54,
            fontSize: 16,
          ),
        ),
//        canvasColor: Colors.white.withOpacity(0.5),
        primarySwatch: Colors.teal,
        accentColor: Colors.amberAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductsOverviewScreen(),
      routes: {
        '/': (ctx) => ProductsOverviewScreen(),
        ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
      },
    );
  }
}
