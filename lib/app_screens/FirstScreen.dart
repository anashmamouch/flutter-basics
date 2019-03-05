import 'dart:math';
import 'dart:async';


import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
            color: Colors.white,
            child: myWidget()
    );
  }

}




myWidget() {
  return Center(
      child:
      Container(
          decoration: border(Colors.red),
          child: column()
      )
  );
}

border(color) {
  return new BoxDecoration(
      border: new Border.all(color: color)
  );
}

int myLuckyNumber() => new Random().nextInt(10);

getTime() {
  final DateTime now = DateTime.now();

}

column() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      Container(
        decoration: border(Colors.black),
        child: FlutterLogo(
                            size: 60.0,
                          ),
      ),
      Container(
        decoration: border(Colors.lightBlue),
        child: Text(
                    "Anas:  ${myLuckyNumber()}",
                    style: TextStyle(fontSize: 20.0, color: Colors.black)
                    ),
      ),
    ],
  );
}

