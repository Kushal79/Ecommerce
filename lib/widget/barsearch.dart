import 'package:flutter/material.dart';
class BarSearch extends StatelessWidget {
  const BarSearch({
    Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final double width= MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20/375.0*width,
                vertical: 9/375.0*width),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: "Search product,",
            hintStyle: TextStyle(color: Colors.lightBlue),
            prefixIcon: Icon(Icons.search, color: Colors.lightBlue,)),
      ),
    );
  }
}
