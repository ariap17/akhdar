import 'package:flutter/material.dart';

class elKotobScreen extends StatefulWidget {
  @override
  _elKotobScreenState createState() => _elKotobScreenState();
}

class _elKotobScreenState extends State<elKotobScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFF1e7145) ,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              Column(
                children: <Widget>[
                  Text('لعبة الثقة', style: TextStyle(fontSize: 20,color: Colors.black)),
                  SizedBox(height: 10),
                  Text('ماريا كوننيكوفا', style: TextStyle(fontSize: 18,color: Colors.black)),
                  Expanded(child: SizedBox()),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 250,
                        height: 2,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      SizedBox(width: 5),
                      Text('0%',style: TextStyle(color: Colors.black),)
                    ],
                  )
                ],
              ),
              SizedBox(width: 30),
              Icon (Icons.bookmark , color: Color(0xFF1e7145),size: 20),
              SizedBox(width: 10),
              Icon(Icons.save_alt , color: Colors.grey,size: 20,)
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color: Color(0xFF1e7145),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFF1e7145) ,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              Column(
                children: <Widget>[
                  Text('لعبة الثقة', style: TextStyle(fontSize: 20,color: Colors.black)),
                  SizedBox(height: 10),
                  Text('ماريا كوننيكوفا', style: TextStyle(fontSize: 18,color: Colors.black)),
                  Expanded(child: SizedBox()),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 250,
                        height: 2,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      SizedBox(width: 5),
                      Text('0%',style: TextStyle(color: Colors.black),)
                    ],
                  )
                ],
              ),
              SizedBox(width: 30),
              Icon (Icons.bookmark , color:Color(0xFF1e7145)),
              SizedBox(width: 10),
              Icon(Icons.save_alt , color: Colors.grey,)
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color:Color(0xFF1e7145),
        )

      ],
    );
  }
}

