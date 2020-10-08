import 'package:akhdar/bottomnai/explore/explore_screen.dart';
import 'package:akhdar/bottomnai/maktbty.dart';
import 'package:akhdar/bottomnai/profile/menu.dart';
import 'package:akhdar/bottomnai/profile/profile_body.dart';
import 'package:akhdar/bottomnai/profile/tabs_screen.dart';
import 'package:akhdar/bottomnai/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          title: Text('حسابي',style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold,color: Colors.black)),
         leading:  IconButton (
             icon: Icon(Icons.menu ,color: Colors.black),
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuScreen()));
           },
         ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        border: Border.all(color: Color(0xFF1e7145)),
                        image: DecorationImage(
                            image: NetworkImage('https://images.unsplash.com/photo-1510227272981-87123e259b17?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&s=3759e09a5b9fbe53088b23c615b6312e'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('ariap147' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black)),
                  SizedBox(height: 10),
                  Stack(
                    children: <Widget>[
                      Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.person , color: Colors.grey),
                                SizedBox(width: 10),
                                Text('العضوية العادية' , style: TextStyle(fontSize: 18 , color: Colors.grey))
                              ],
                            ),
                          )
                      ),
                      Positioned(
                          right: 230,
                          child: Container(
                            width: 80,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xFF1e7145),
                            ),
                            child: Center(
                              child: Text(
                                'ترقية' , style: TextStyle(fontSize: 18 , color: Colors.white),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.4)
                    ),
                    child: Center(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 35,
                              height: 30,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/egypt.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 8),
                            Text('مصر' , style: TextStyle(color: Colors.black)),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_back_ios , color: Colors.grey,)
                          ],
                        )
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.supervised_user_circle),
                      SizedBox(width: 7),
                      Text('38 نقطة',style: TextStyle(color: Colors.black , fontSize: 18),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 25),
              TabsScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));

                    },
                    child: Icon(Icons.person ,color: Color(0xFF1e7145) )),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      ExploreScreen()));
                    },
                    child: Icon(Icons.explore , color: Colors.grey)),
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
    );
  }
}
