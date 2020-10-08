import 'package:akhdar/bottomnai/explore/explore_screen.dart';
import 'package:akhdar/bottomnai/maktbty.dart';
import 'package:akhdar/bottomnai/profile/profile_screen.dart';
import 'package:akhdar/bottomnai/search_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget _textField (
  {
    String hint , bool secure
}
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child:Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          obscureText: secure,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.cancel ),
            fillColor: Colors.grey.withOpacity(0.4) ,
            hintText: hint,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            )
          ),
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: SearchAppBar() ,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(
              width: 350,
              height: 80,
              child: _textField(
                    hint: "بحث عن" ,
                    secure: false ,
                  ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
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
                    child: Icon(Icons.explore , color: Colors.grey)),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon:InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                    },
                    child: Icon(Icons.search , color: Color(0xFF1e7145) )),
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

