import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/pages/productdetail.dart';
import 'package:flutter/material.dart';


class SeeAll extends StatelessWidget {
  
  final String name;
  final List<Products> productsList;
  
  const SeeAll({Key key,
    @required this.name,
    @required this.productsList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(name),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) {
                return GridView.builder(
                  itemCount: productsList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (orientation == Orientation.portrait) ? 2:3,
                    childAspectRatio: (orientation == Orientation.portrait)
                        ? MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1)
                        : MediaQuery.of(context).size.width /900.0,
                  ),
                  itemBuilder: (BuildContext context, int index){
                    Products products = productsList[index];
                    return Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          GestureDetector(
                            onTap:  () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => ProductDetail(products: products)));
                            },
                            child: Container(
                              height: 175,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          products.image
                                      ),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Text(
                            products.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          
                          Text("Price: " + products.price.toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                          Text("Size:" + products.size,
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
          ),
        )
    );
  }
}
