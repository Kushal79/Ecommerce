import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/pages/productdetail.dart';
import 'package:ecommerce/pages/seeall.dart';
import 'package:flutter/material.dart';


class ProductCarousal extends StatelessWidget {
  final List<Products> products;

final String title;
final String subTitle;
  const ProductCarousal({Key key, @required this.products,@required this.title,@required this.subTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            title,
            style: TextStyle(
                fontSize:18,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                subTitle,
                style: TextStyle(color: Colors.lightBlue),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_)=>SeeAll(name: "See All", productsList: products)));
                },
                child: Text(
                  'See More',
                  style: TextStyle(color: Colors.lightBlue),

                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 250.0,
          child: Container(
              height: 250.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    Products product= products[index];
                    return ProductContainer(products: product,);
                  })),
        )
      ],
    );
  }
}

class ProductContainer extends StatelessWidget {
  final Products products;

  const ProductContainer({Key key, this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => ProductDetail(products: products,)));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Container(
          width: 205,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Hero(
                      tag: products.image,
                      child: Container(
                        height: 175,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(18.0),
                            image: DecorationImage(
                              image: AssetImage(products.image),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                  
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Center(
                  child: Text(
                    products.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),                ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Center(
                  child: Text("Rs "+
                    products.price.toString(),
                    overflow: TextOverflow.ellipsis,
                                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
