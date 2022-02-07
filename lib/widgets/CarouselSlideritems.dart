import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget CarouselSliderItems(BuildContext context, String imageURL)
{ Size size = MediaQuery.of(context).size;

  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // RichText(text: TextSpan(
      //   children: [
      //     TextSpan(
      //       text: ''
      //     )
      //   ]
      // )),


      Expanded(child: Image.asset("$imageURL", width: size.width,fit: BoxFit.fill,))
    ],
  );
}