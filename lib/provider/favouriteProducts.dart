import 'package:ecommerce/model/products.dart';
import 'package:flutter/cupertino.dart';

class FavouriteProduct with ChangeNotifier{
  List<Products> _favouriteList = [];
  
  List<Products> get favouriteList => _favouriteList;
  
  addcartList(Products newItem) {
    _favouriteList.add(newItem);
    notifyListeners();
  }
  
  removeCartItem(Products products) {
    _favouriteList.remove(products);
    notifyListeners();
  }
}