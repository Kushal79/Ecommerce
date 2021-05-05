import 'package:ecommerce/model/products.dart';
import 'package:ecommerce/provider/favouriteProducts.dart';
import 'package:ecommerce/provider/productprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatefulWidget {
  final Products products;
  const ProductDetail({Key key,@required this.products}) : super(key: key);
  
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    final provider = Provider.of<ProductsProvider>(context);
    final favprovider= Provider.of<FavouriteProduct>(context);
    return Scaffold(
      floatingActionButton: Container(
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [RaisedButton.icon(
            elevation: 0,
            color: Colors.red[400],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
              icon: provider.productist.contains(widget.products)?Icon(Icons.remove_shopping_cart,color: Colors.white):Icon(Icons.shopping_cart,color: Colors.white),
              label: provider.productist.contains(widget.products)?Text("Remove from Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),):Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
              onPressed: () {
                if (provider.productist.contains(
                    widget.products)) {
                  provider.removeCartItem(widget.products);
                } else {
                  provider.addcartList(widget.products);
                }
              }),
            RaisedButton(
              color: Colors.blue,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: Text("Buy Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
              onPressed: (){
      
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.4,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Hero(tag: widget.products.image,
                              child: Image.asset(widget.products.image,
                                fit: BoxFit.fill,)
                          ),
                        ),
                        Positioned(
                          top: 30.0,
                          left: 15.0,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
  
                            children: [
                              Text(
                                widget.products.name, style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold,
                                color: Colors.purple
                              ),
                              ),
                              Text("Price:", style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,
                                  color: Colors.purple

                              ),
                              ),
  
                              Text(
                                  "Rs " +
                                  widget.products.price.toString(), style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,
                                
                              ),
                              ),

                            ],
                          )  ,
                            IconButton(icon: favprovider.favouriteList.contains(widget.products)?Icon(Icons.favorite,color: Colors.red,size: 35,):Icon(Icons.favorite_border_outlined,color: Colors.black,
                            size: 35,), onPressed: () {
                              if (favprovider.favouriteList.contains(
                                  widget.products)) {
                                favprovider.removeCartItem(widget.products);
                              } else {
                                favprovider.addcartList(widget.products);
                              }
                            })
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Text("Available Color: ",
                             style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color: Colors.purple
                        ),
                        ),
                        
                        Text(
                          widget.products.color, style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        SizedBox(height: 10.0,),
                        Text("Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,
                            color: Colors.purple
                        ),),
                        Text(widget.products.size,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,),),
                        
                        SizedBox(height: 10.0,),
                        Text("Info",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,
                            color: Colors.purple
                        ),),
                        Text(widget.products.description,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,),),
                        
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
