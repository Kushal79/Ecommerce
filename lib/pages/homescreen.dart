import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/pages/productCarousel.dart';
import 'package:ecommerce/pages/cart.dart';
import 'package:ecommerce/widget/barsearch.dart';
import 'package:ecommerce/widget/categorybar.dart';
import 'package:ecommerce/widget/slidecarousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<AssetImage> imageList=[
    AssetImage('assets/blazer1.jpg'),
    AssetImage('assets/jacket1.jpg'),
    AssetImage('assets/pant.jpg'),
    AssetImage('assets/scaf.jpg'),
    AssetImage('assets/shirt2.jpg'),
    AssetImage('assets/shoes3.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  
    return Scaffold(
     backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    BarSearch(),
                    CircleAvatar(
                     
                     child: IconButton(
                       icon: Icon(Icons.shopping_cart),
                       onPressed: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (_) => Cart()));
                         
                       },
                     ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      backgroundImage: NetworkImage(
                          "https://media.gq.com/photos/56e853e7161e63486d04d6c8/4:3/w_1600,h_1200,c_limit/david-beckham-gq-0416-2.jpg"
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.0,),
               
                Text("Category",style: TextStyle(
                    fontSize: 22,color: Colors.purple,
                    fontWeight: FontWeight.bold),
                ),
                CategoryBar(size: size),
                Text("Arriving Soon",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),),
                SlideCarousal(
                  images: imageList,
                ),
                ProductCarousal(title: "Recents Products",
                subTitle: "See all the products",
                products: getproducts(),
                ),
                ProductCarousal(title: "Trending Products",
                  subTitle: "See all trending products",
                  products: trendingproducts(),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
