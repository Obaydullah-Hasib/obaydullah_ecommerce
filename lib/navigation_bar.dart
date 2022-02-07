import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:obaydullah_ecommerce/pages/homepage.dart';
import 'package:obaydullah_ecommerce/pages/homepage1.dart';
import 'package:obaydullah_ecommerce/test.dart';
class CurvedNavBarClass extends StatefulWidget {
  const CurvedNavBarClass({Key? key}) : super(key: key);

  @override
  _CurvedNavBarClassState createState() => _CurvedNavBarClassState();
}

class _CurvedNavBarClassState extends State<CurvedNavBarClass> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  int _currentIndex = 0;
  final _pages=[
    OHSopHomePage(),
    ModalBottomSheetClass(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:_navBar() ,
      body: _pages[_currentIndex],
    );
  }

  Widget _navBar(){

    return Theme(
      data: Theme.of(context).copyWith(iconTheme: IconThemeData(color:Colors.black )),
      child: CurvedNavigationBar(
          key: navigationKey,
          index: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex=index;

            });
          },
          letIndexChange:(index)=> true
          ,  height: 60.0,
          color: Colors.greenAccent,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.pinkAccent,
          items: [
            Icon(Icons.home,semanticLabel: 'Home', size: 30),
            Icon(Icons.list,semanticLabel: 'Home', size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          animationCurve:Curves.elasticInOut ,
          animationDuration: Duration(
            milliseconds: 100,
          ),
      ),
    );

  }
}
