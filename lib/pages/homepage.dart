import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:obaydullah_ecommerce/pages/homepage1.dart';
import 'package:obaydullah_ecommerce/test.dart';
import 'package:obaydullah_ecommerce/widgets/CarouselSlideritems.dart';
import 'package:obaydullah_ecommerce/widgets/appBar_Custom.dart';

class OHSopHomePage extends StatefulWidget {
  const OHSopHomePage({Key? key}) : super(key: key);

  @override
  _OHSopHomePageState createState() => _OHSopHomePageState();
}

class _OHSopHomePageState extends State<OHSopHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: false,
      appBar: OHShopappBar(context, 'Homepage'),
      body: _bodyUI(),
    );
  }

  Widget _bodyUI() {
    Size size = MediaQuery.of(context).size;
    Color PrimeryColor = Theme.of(context).primaryColor;
    Color HintColor = Theme.of(context).hintColor;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: CarouselSlider(
                      items: [
                    CarouselSliderItems(context, "assets/images/slider0.jpg"),
                    CarouselSliderItems(context, "assets/images/slider1.jpg"),
                    CarouselSliderItems(context, "assets/images/slider2.jpg"),
                    CarouselSliderItems(context, "assets/images/slider3.jpg"),
                    CarouselSliderItems(context, "assets/images/slider4.jpg"),
                    CarouselSliderItems(context, "assets/images/slider5.jpg"),
                    CarouselSliderItems(context, "assets/images/slider6.jpg"),
                  ],
                      options: CarouselOptions(
                        height: 300,
                        initialPage: 0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.elasticInOut,
                        enableInfiniteScroll: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(microseconds: 5000),
                        viewportFraction: .8,
                        reverse: true,
                      ))),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Brands",
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 6,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            mainAxisExtent: 80,
                          ),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, index) {
                            return InkWell(
                              splashColor: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                              onTap: () {},
                              child: Container(

                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                child: Center(
                                    child: Text(
                                  'data',
                                  textAlign: TextAlign.center,
                                )),
                              ),
                            );
                          },
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Catagories",
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 6,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate:
                          SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            mainAxisExtent: 80,
                          ),
                          itemCount: 8,
                          itemBuilder: (BuildContext context, index) {
                            return InkWell(
                              splashColor: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                              onTap: () {

                              },
                              child: Container(

                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                child: Center(
                                    child: Text(
                                      'data',
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            );
                          },
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
