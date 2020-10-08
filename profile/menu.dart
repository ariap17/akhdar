import 'package:akhdar/bottomnai/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Widget r (
      Widget _icon , String title
      ){
    return  Row (
      children: <Widget>[
        _icon,
        SizedBox(width: 10),
        Text(title,style: TextStyle(color: Colors.white , fontSize: 20),),
        Expanded(child: SizedBox(),),
        Icon(Icons.arrow_forward_ios , color: Colors.white,),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xFF1e7145),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Positioned(
            top: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  r(Icon(Icons.history , color: Colors.white,), 'السجل'),
                  SizedBox(height: 25),
                  r(Icon(Icons.favorite , color: Colors.white,), 'الاعجابات'),
                  SizedBox(height: 25),
                  r(Icon(Icons.error , color: Colors.white,), 'مساعدة'),
                  SizedBox(height: 25),
                  r(Icon(Icons.settings , color: Colors.white,), 'الاعدادات'),
                  Positioned(
                    bottom: 20,
                    child: IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfileScreen()));
                      },
                    ),
                  ),
                  Text('إصدار 2.2.3',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
