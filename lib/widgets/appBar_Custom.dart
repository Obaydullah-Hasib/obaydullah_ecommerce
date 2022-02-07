import 'package:flutter/material.dart';
PreferredSizeWidget OHShopappBar(BuildContext context, String title){
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Theme.of(context).primaryColor,
    leading: Image.asset('assets/images/logo.jpg'),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black, size: 30,)),
      IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black, size: 30,))
    ],
  );
}