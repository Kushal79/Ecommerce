import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/pages/cart.dart';
import 'package:ecommerce/pages/seeall.dart';
import 'package:ecommerce/widget/category.dart';
import 'package:flutter/material.dart';
class CategoryBar extends StatelessWidget {
  const CategoryBar({
    Key key,
    @required this.size,
  }) : super(key: key);
  
  final Size size;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/8,
      padding: EdgeInsets.all(8.0),
      
      child: ListView(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        children: [
          Category(
              onTap: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (_)=>SeeAll(name: "All Shirt", productsList: getshirts()))),
              iconLocation: "assets/shirt-svgrepo-com.svg",
              name: "Shirt"
          ),
          SizedBox(width: 5.0,),
          Category(
              onTap: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (_)=>SeeAll(name: "All Pants", productsList: getpants()))),
              iconLocation: "assets/pants-svgrepo-com.svg",
              name: "Pants"
          ),
          SizedBox(width: 5.0,),
          
          Category(
              onTap: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (_)=>SeeAll(name: "Boots", productsList: getscaf()))),
              iconLocation: "assets/snow-boot-svgrepo-com.svg",
              name: "Boots"
          ),
          SizedBox(width: 5.0,),
          Category(
              onTap: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (_)=>SeeAll(name: "See All Jacket", productsList: getjacket()))),
              iconLocation: "assets/blouse-svgrepo-com.svg",
              name: "Jacket"
          ),
          SizedBox(width: 5.0,),
          
          Category(
              onTap: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (_)=>SeeAll(name: "All Scaf", productsList: getscaf()))),
              iconLocation: "assets/cardigan-svgrepo-com.svg",
              name: "Blazer"
          )
        ],
      ),
    );
  }
}
