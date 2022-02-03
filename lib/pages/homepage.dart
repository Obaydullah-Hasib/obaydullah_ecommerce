import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:obaydullah_ecommerce/widgets/appBar_Custom.dart';
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
class OHSopHomePage extends StatefulWidget {
  const OHSopHomePage({Key? key}) : super(key: key);

  @override
  _OHSopHomePageState createState() => _OHSopHomePageState();
}

class _OHSopHomePageState extends State<OHSopHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: OHShopappBar(context,'Homepage'),
      body: _bodyUI(),
    );
  }
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${imgList.indexOf(item)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
  ))
      .toList();
  Widget _bodyUI(){
    Size size = MediaQuery.of(context).size;
    Color PrimeryColor = Theme.of(context).primaryColor;
    Color HintColor = Theme.of(context).hintColor;
    return SingleChildScrollView(
      child: Column(
        children: [

          Row(
            children: [
              Expanded(child: CarouselSlider(items:imageSliders , options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16/9,
                autoPlayCurve: Curves.elasticInOut,
                enableInfiniteScroll: true,autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(microseconds: 3000),
                viewportFraction: .8,
                reverse: true,

              ))),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.black54,
            height: size.height*0.267,
            width: size.width,
            child: Container(

              height: size.height*0.267,
              width: size.width,
              child: Column(
                children: [
                SizedBox(height: 20,),
                  Text("Brands",style: TextStyle(fontSize: 30),),
                  Row(

                    children: [

                      Expanded(
                          flex:6,
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3/2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              mainAxisExtent: 80,


                            ),
                            itemCount: 7, itemBuilder: (BuildContext context, index){
                            return InkWell(

                              splashColor: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                              onTap: (){},
                              child: Container(color: Colors.teal,
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                child: Center(child: Text('data',textAlign: TextAlign.center,)),
                              ),

                            );
                            // return Container(color: Colors.red,
                            //     alignment: Alignment.center,
                            //     child: Text("name"),
                            //     decoration: BoxDecoration(
                            //         color: Colors.amber,
                            //         borderRadius: BorderRadius.circular(15))
                            // );
                          },
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black54,
            height: size.height*0.267,
            width: size.width,
            child: Column(
              children: [
                Text("Catagories",style: TextStyle(fontSize: 30),),
                Row(

                  children: [

                    Expanded(
                      flex:6,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3/2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            mainAxisExtent: 80,


                          ),
                          itemCount: 7, itemBuilder: (BuildContext context, index){
                          return InkWell(

                            splashColor: Colors.red,
                            borderRadius: BorderRadius.circular(25),
                            onTap: (){},
                            child: Container(color: Colors.teal,
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              child: Center(child: Text('data',textAlign: TextAlign.center,)),
                            ),

                          );
                          // return Container(color: Colors.red,
                          //     alignment: Alignment.center,
                          //     child: Text("name"),
                          //     decoration: BoxDecoration(
                          //         color: Colors.amber,
                          //         borderRadius: BorderRadius.circular(15))
                          // );
                        },
                        )
                    )
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
