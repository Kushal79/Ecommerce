class Products{
  String name;
  double price;
  String color;
  String description;
  String size;
  String image;
 
  Products(
      this.name,
      this.price,
      this.color,
      this.description,
      this.size,
      this.image
      );
}


List<Products> getproducts(){
  return <Products>[
    Products("Shirt", 1000, "Black and White", "Cotton Shirt in Black And White" , "M", "assets/shirt.jpg"),
    Products("Cotton Shirt", 1000, "Black", "Printed Lion in Black shirt", "S", "assets/shirt1.jpg"),
    Products("Shirt", 1000, "White and Grey", "Classic Button shirt available in White and Grey ", "L", "assets/shirt2.jpg"),
    Products("Cotton Shirt", 1000, "Black and Grey", "Classic Button shirt available in White and Grey", "XL", "assets/shirt3.jpg"),
    Products("Pant", 1700, "Blue", "Thamel", "28", "assets/pant.jpg"),
    Products("Cotton Pant", 1900, "Black", "Thamel", "31", "assets/pant1.jpg"),
    Products("Sweat Pant", 2200, "Grey", "Thamel", "30", "assets/pant2.jpg"),
    Products("Jogging Pant", 2300, "Brown", "Thamel", "29", "assets/pant3.jpg"),
  
  ];
}

List<Products> getshirts(){
  return <Products>[
    Products("Shirt", 1000, "Black and White", "Cotton Shirt in Black And White" , "M", "assets/shirt.jpg"),
    Products("Cotton Shirt", 1000, "Black", "Printed Lion in Black shirt", "S", "assets/shirt1.jpg"),
    Products("Shirt", 1000, "White and Grey", "Classic Button shirt available in White and Grey ", "L", "assets/shirt2.jpg"),
    Products("Cotton Shirt", 1000, "Black and Grey", "Classic Button shirt available in White and Grey", "XL", "assets/shirt3.jpg"),
  ];
}

List<Products> getpants(){
  return <Products>[
    Products("Pant", 1700, "Blue", "Thamel", "28", "assets/pant.jpg"),
    Products("Cotton Pant", 1900, "Black", "Thamel", "31", "assets/pant1.jpg"),
    Products("Sweat Pant", 2200, "Grey", "Thamel", "30", "assets/pant2.jpg"),
    Products("Jogging Pant", 2300, "Brown", "Thamel", "29", "assets/pant3.jpg"),

  ];
}
List<Products> trendingproducts(){
  return <Products>[
    Products("Jacket", 1000, "red", "Gongabu", "M", "assets/jacket1.jpg"),
    Products("Downs Jacket", 1000, "white", "Gongabu", "S", "assets/jacket.jpg"),
    Products("Woolen Jacket", 1000, "grey", "Gongabu", "L", "assets/jacket3.jpg"),
    Products("Leather Jacket", 1000, "black", "Gongabu", "XL", "assets/jacket4.jpg"),
    Products("Scaf", 1700, "Blue", "Thamel", "28", "assets/scaf1.jpg"),
    Products("Cotton Scaf", 1900, "Black", "Thamel", "31", "assets/scaf2.jpg"),
    Products("Cotton Scaf", 2200, "Grey", "Thamel", "30", "assets/scaf4.jpg"),
    Products("Woolen Scaf", 2300, "Brown", "Thamel", "29", "assets/scaf3.jpg"),
  
  ];
}

List<Products> getjacket(){
  return <Products>[
  
    Products("Jacket", 1000, "red", "Gongabu", "M", "assets/jacket1.jpg"),
    Products("Downs Jacket", 1000, "white", "Gongabu", "S", "assets/jacket.jpg"),
    Products("Woolen Jacket", 1000, "grey", "Gongabu", "L", "assets/jacket3.jpg"),
    Products("Leather Jacket", 1000, "black", "Gongabu", "XL", "assets/jacket4.jpg"),
  ];
}

List<Products> getscaf(){
  return <Products>[
  
    Products("Scaf", 1700, "Blue", "Thamel", "28", "assets/scaf1.jpg"),
    Products("Cotton Scaf", 1900, "Black", "Thamel", "31", "assets/scaf2.jpg"),
    Products("Cotton Scaf", 2200, "Grey", "Thamel", "30", "assets/scaf4.jpg"),
    Products("Woolen Scaf", 2300, "Brown", "Thamel", "29", "assets/scaf3.jpg"),
  ];
}