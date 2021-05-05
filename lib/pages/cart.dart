import 'package:ecommerce/pages/productdetail.dart';
import 'package:ecommerce/provider/productprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: provider.productist.length == 0
          ? Center(
              child: Text("No items in the Cart"),
            )
          :                 ListView.builder(
        shrinkWrap: true,
        itemCount: provider.productist.length,
        itemBuilder: (context, index){
          return Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ProductDetail(products: provider.productist[index],)));
                  },
                  child: Container(
                    child: Column(
                      children: [
                       Container(
                         height: 100,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage(provider.productist[index].image,),fit: BoxFit.scaleDown
                             )
                           ),
                           ),
                        Text(provider.productist[index].name),
                        Text("Price: "+"Rs "+provider.productist[index].price.toString()),
                      ],
                    )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton.icon(
                      label: Text("Remove",style: TextStyle(color: Colors.white),),
                      elevation: 0,
                      icon: Icon(Icons.remove_shopping_cart_outlined,color: Colors.white,),
                      onPressed: (){
                        provider.removeCartItem(provider.productist[index]);
                      },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.red,),
                    RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        color: Colors.blue,
                        child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                        onPressed: (){
            
                        })
                  ],
                ),],
            ),
          );
            
         
        },

      ),

    );
  }
}
