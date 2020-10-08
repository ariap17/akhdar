import 'dart:async';
import 'package:akhdar/bottomnai/explore/explore_screen.dart';
import 'package:akhdar/bottomnai/maktbty.dart';
import 'package:akhdar/bottomnai/profile/profile_screen.dart';
import 'package:akhdar/bottomnai/search.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
      onTap: (){
        setState(() {
          _selected = true;
        });
       Timer(Duration(seconds: 1), (){

         Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
       });
       setState(() {
         _selected = false;
       });
    },
        child: Icon(Icons.person ,color: _selected? Colors.green : Colors.grey,)),
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
    );
  }
}
