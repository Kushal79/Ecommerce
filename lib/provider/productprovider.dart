import 'package:ecommerce/model/products.dart';
import 'package:flutter/cupertino.dart';

class ProductsProvider with ChangeNotifier{
  List<Products> _productList = [];
  
  List<Products> get productist => _productList;
  
  addcartList(Products newItem) {
    _productList.add(newItem);
    notifyListeners();
  }
  
  removeCartItem(Products products) {
    _productList.remove(products);
    notifyListeners();
  }
}