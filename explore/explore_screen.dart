import 'package:akhdar/bottomnai/explore/explore_items_list.dart';
import 'package:akhdar/bottomnai/explore/explore_search.dart';
import 'package:akhdar/bottomnai/explore/explore_items2_list.dart';
import 'package:akhdar/bottomnai/explore/explore_items3_list.dart';
import 'package:akhdar/bottomnai/explore/screen_one.dart';
import 'package:akhdar/bottomnai/explore/screen_two.dart';
import 'package:akhdar/bottomnai/maktbty.dart';
import 'package:akhdar/bottomnai/profile/profile_screen.dart';
import 'package:akhdar/bottomnai/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  Widget _explore (
      Widget _items , String _title , String name1 , String name2 , String name3
      ) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _items,
          SizedBox(height: 15),
          Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              children: <Widget>[
                Icon(Icons.reply ),
                SizedBox(width: 15),
                Icon(Icons.favorite ,color: Colors.red ),
                SizedBox(width: 10),
                Text('7',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(_title ,style: TextStyle(color: Colors.black , fontSize: 24 ),),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenOne()));
                },
                child: Container(
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFE9F2ED)
                  ),
                  child: Center(
                      child: Text(name1,style: TextStyle(color: Color(0xFF123CA9)),)
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
                      child: Text(name2,style: TextStyle(color:Color(0xFF123CA9)),)
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
                      child: Text(name3,style: TextStyle(color: Color(0xFF123CA9)),)
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
    );
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar:   AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Text('استكشف' , style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                    )),
                    SizedBox(width: 180),
                    IconButton( icon:Icon (Icons.search , color: Colors.black, size: 30) ,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ExploreSearch()));
                      },
                    ),

                  ],
                ),
              )
            ],
          ),
          body: ListView(
            children: <Widget>[
              _explore(ExploreList(), 'كيف تكون أقل تشائمًا', '#تحسين_الذات', '#تفكير_ايجابي', '#صحة_نفسية'),
             _explore( ExploreList2() , 'كيف تفكر بوضوح ', '#تفكير_ايجابي', '#ريادرة_الأعمال', '#تحسين_الذات'),
              _explore(ExploreList3(), 'كيف تقيم علاقة فورية', '#تحسين_الذات', '#تواصل_فعال', '#بناء_العلاقات'),
            ],
          ),
          bottomNavigationBar:  BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));

                      },
                      child: Icon(Icons.person ,color: Colors.grey )),
                  title: Text('')
              ),
              BottomNavigationBarItem(
                  icon:InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MaktbtyScreen()));
                      },
                      child:  Icon(Icons.local_library , color: Colors.grey)),
                  title: Text('')
              ),
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ExploreScreen()));
                      },
                      child: Icon(Icons.explore , color: Color(0xFF1e7145))),
                  title: Text('')
              ),
              BottomNavigationBarItem(
                  icon:InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                      },
                      child: Icon(Icons.search , color: Colors.grey )),
                  title: Text('')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home , color: Colors.grey,),
                  title: Text('')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
