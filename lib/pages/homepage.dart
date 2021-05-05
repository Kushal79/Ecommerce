// import 'package:ecommerce/pages/homescreen.dart';
// import 'package:ecommerce/pages/cart.dart';
// import 'package:ecommerce/pages/search_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int _currentIndex=0;
//
//   @override
//   Widget build(BuildContext context) {
//   final List<Widget> _children=[
//
//     HomeScreen(),
//     SearchScreen(),
//     Cart(),
//   ];
//     return Scaffold(
//     bottomNavigationBar: BottomNavigationBar(
//       currentIndex: _currentIndex,
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home),
//         // ignore: deprecated_member_use
//         title: Text("Home"),
//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.search),
//           // ignore: deprecated_member_use
//           title: Text("Search"),
//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
//           // ignore: deprecated_member_use
//           title: Text("My Cart"),
//         ),
//       ],
//       onTap: (index){
//         setState(() {
//           _currentIndex=index;
//         });
//       },
//     ),
//     body: _children[_currentIndex]
//     );
//   }
// }
