import 'package:ecommerce/pages/homepage.dart';
import 'package:ecommerce/pages/homescreen.dart';
import 'package:ecommerce/provider/favouriteProducts.dart';
import 'package:ecommerce/provider/productprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ProductsProvider()
        ),
        ChangeNotifierProvider.value(value: FavouriteProduct()
        ),
      ],
      child: MaterialApp(
        title: "E-Commerece App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.lightBlue,
          accentColor: Colors.lightGreen,
          textTheme:
          GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.lightBlue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
