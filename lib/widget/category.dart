import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  final Function onTap;
  final String iconLocation;
  final String name;
  
  const Category({Key key,
    @required this.onTap,
    @required this.iconLocation,
    @required this.name})
      : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            SvgPicture.asset(iconLocation,
            height: 45.0,
            ),
            SizedBox(height: 3.0,),
            Text(name,style: TextStyle(
              fontSize: 22,color: Colors.blue
            ),),
          ],
        ),
      ),
    );
  }
}
