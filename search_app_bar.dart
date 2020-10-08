import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SearchAppBar () {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
            children: <Widget>[
               Directionality(
                 textDirection: TextDirection.rtl,
                 child: Text('البحث' , style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
              ),
               ),
              SizedBox(width: 220),
              Container(
                width: 30,
                height: 30,
                color: Colors.white,
              )
            ],
          ),
      )
    ],
  );
}