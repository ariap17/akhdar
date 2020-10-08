
import 'package:flutter/material.dart';

class BalanceScreen extends StatefulWidget {
  @override
  _BalanceScreenState createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
         Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                width: MediaQuery.of(context).size.width - 50,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white ,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)
                ),
              ),
              Positioned(
                top: 100,
                child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white ,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    children: <Widget>[
                      Text('اخر الاسبوع' , style: TextStyle(fontSize: 26 , color: Colors.black)),
                      Expanded(child: SizedBox()),
                      Text('4 نقطة' , style: TextStyle(fontSize: 26 , color: Colors.black)),
                    ],
                  ),
                ),
              )
            ],
          ),

      ],
    );
  }
}
