import 'package:flutter/material.dart';
import 'dart:async';

class PageView_dicas extends StatefulWidget {
  @override
  _PageView_dicas createState() => _PageView_dicas();
}

class _PageView_dicas extends State<PageView_dicas> {

  var controller = PageController(
    viewportFraction:  2 / 3 ,
    initialPage: 1,
  );

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 250.0,
        width: 250.0,
        margin: EdgeInsets.symmetric(horizontal: 10.0),

        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,

          children: <Widget>[
            Container(


              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                image: new DecorationImage(
                  //color: Color(0xffb714365),
                  image: new ExactAssetImage('imagens/bananan.png'),
                 // scale: 40,
                  fit: BoxFit.contain,
                ),


                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),


                borderRadius: BorderRadius.circular(12),
              ),

            ),
            Container(


              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                image: new DecorationImage(
                  //color: Color(0xffb714365),
                  image: new ExactAssetImage('imagens/maça.png'),
                  // scale: 40,
                  fit: BoxFit.contain,
                ),


                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),


                borderRadius: BorderRadius.circular(12),
              ),

            ),
            Container(


              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                image: new DecorationImage(
                  //color: Color(0xffb714365),
                  image: new ExactAssetImage('imagens/maça.png'),
                  // scale: 40,
                  fit: BoxFit.contain,
                ),


                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),


                borderRadius: BorderRadius.circular(12),
              ),

            ),

          ],
        ),
      )
    );

  }



}