import 'package:flutter/material.dart';
import 'package:obaydullah_ecommerce/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OH\'s Shop',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Colors.teal,
        primarySwatch: Colors.teal,
        hintColor: Colors.white,
      ),
      home: OHSopHomePage(),
    );
  }
}

