import 'package:flutter/material.dart';
PreferredSizeWidget OHShopappBar(BuildContext context, String title){
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Theme.of(context).primaryColor,
  );
}