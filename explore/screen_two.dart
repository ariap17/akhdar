import 'package:akhdar/bottomnai/explore/explore_items2_list.dart';
import 'package:akhdar/bottomnai/explore/explore_items_list.dart';
import 'package:akhdar/bottomnai/explore/explore_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('رجوع',style: TextStyle(color: Color(0xFF1e7145),fontSize: 18),),
          leading: Icon(Icons.arrow_back_ios,color: Color(0xFF1e7145)),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFE9F2ED)
              ),
              child: Center(
                  child: Text('#تواصل_فعال',style: TextStyle(color: Color(0xFF123CA9)),)
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ExploreList(),
                  SizedBox(height: 15),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.reply ),
                        SizedBox(width: 15),
                        Icon(Icons.favorite_border ),
                        SizedBox(width: 10),
                        Text('7',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('كيف تقيم علاقة فورية',style: TextStyle(color: Colors.black , fontSize: 24 ),),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFE9F2ED)
                          ),
                          child: Center(
                              child: Text('#تحسين_الذات',style: TextStyle(color: Color(0xFF123CA9)),)
                          ),
                        ),

                      SizedBox(width: 5),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                        },
                        child: Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFE9F2ED)
                          ),
                          child: Center(
                              child: Text('#تواصل_فعال',style: TextStyle(color:Color(0xFF123CA9)),)
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                        },
                        child: Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFE9F2ED)
                          ),
                          child: Center(
                              child: Text('#بناء_العلاقات',style: TextStyle(color: Color(0xFF123CA9)),)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ExploreList2() ,
                  SizedBox(height: 15),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.reply ),
                        SizedBox(width: 15),
                        Icon(Icons.favorite_border ),
                        SizedBox(width: 10),
                        Text('5',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('كيف تفكر بوضوح ',style: TextStyle(color: Colors.black , fontSize: 24 ),),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFE9F2ED)
                        ),
                        child: Center(
                            child: Text('#تفكير_ايجابي',style: TextStyle(color: Color(0xFF123CA9)),)
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFE9F2ED)
                        ),
                        child: Center(
                            child: Text('#ريادرة_الأعمال',style: TextStyle(color: Color(0xFF123CA9)),)
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFE9F2ED)
                        ),
                        child: Center(
                            child: Text('#تحسين_الذات',style: TextStyle(color: Color(0xFF123CA9)),)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ExploreList(),
                  SizedBox(height: 15),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.reply ),
                        SizedBox(width: 15),
                        Icon(Icons.favorite_border ),
                        SizedBox(width: 10),
                        Text('10',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('كيف تقيم علاقة فورية',style: TextStyle(color: Colors.black , fontSize: 24 ),),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFE9F2ED)
                        ),
                        child: Center(
                            child: Text('#تحسين_الذات',style: TextStyle(color: Color(0xFF123CA9)),)
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFE9F2ED)
                        ),
                        child: Center(
                            child: Text('#تواصل_فعال',style: TextStyle(color: Color(0xFF123CA9)),)
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFE9F2ED)
                        ),
                        child: Center(
                            child: Text('#بناء_العلاقات',style: TextStyle(color: Color(0xFF123CA9)),)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
