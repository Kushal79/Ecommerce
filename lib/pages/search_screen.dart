import 'package:ecommerce/provider/favouriteProducts.dart';
import 'package:ecommerce/widget/barsearch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favprovider= Provider.of<FavouriteProduct>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              BarSearch(),
              SizedBox(height: 10.0,),
              favprovider.favouriteList.length!=0?Text("Your Favourite"):Container(),
              Container(
                padding: EdgeInsets.all(12.0),
                child: favprovider.favouriteList.length==0?Center(
                  child: Text("No Favourite"),):
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: favprovider.favouriteList.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(favprovider.favouriteList[index].name),
                      leading: Image.asset(favprovider.favouriteList[index].image),
                      subtitle: Text("Price: "+"Rs "+favprovider.favouriteList[index].price.toString()),
                      trailing:
                      IconButton(icon:Icon(Icons.favorite,color: Colors.red,size: 35,),
                          onPressed: () {
                        
                          favprovider.removeCartItem(favprovider.favouriteList[index]);
                      }),
                    );
                  },
                  
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
