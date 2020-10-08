
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
int selectedLibrary =0;
class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

  List<Map<String, dynamic>> libraryList = [
    {'name' : 'الكتب', },
    {'name' : 'العلامات', },
    {'name' : 'أفكار الكتب',},
  ];

  Widget libraries({String libraryName , int index}) {
    bool isSelceted =selectedLibrary == index ;
    return InkWell(
      onTap: (){
        setState(() {

          selectedLibrary = index;
        });
      },
      child: Container(
        height: 50,
      color : Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
        child: Column(
         children: <Widget>[
           Text (libraryName ,style: TextStyle(
             fontSize: 20, color : isSelceted? Color(0xFF1e7145) : Colors.grey,
             decoration: isSelceted ? TextDecoration.underline : TextDecoration.none
           ),),


         ],
        ),
      ),
    );
  }

  Widget elkotb () {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      color: Colors.white,
    );

  }

  Widget afkar () {
    return Container(
      color: Colors.blue,
      child: Text('2'),
    );

  }

  Widget alamat () {
    return Container(
      color: Colors.deepOrangeAccent,
      child: Text('3'),
    );

  }
  @override
  Widget build(BuildContext context) {
    List <Widget> screensList = [
      elkotb() ,afkar() ,alamat()
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Tab (
                    text: ('الكتب') ,
                  ),
                  Tab (
                    text: ('العلامات'),
                  ),
                  Tab(
                    text: ('أفكار الكتب'),
                  )
                ],
              ),
              centerTitle: false,
              title:  Text('مكتبتي',style: TextStyle(fontSize: 24,color: Colors.black)),
            ),
            body: TabBarView(
              children: <Widget>[

                libraries(
                  libraryName: libraryList[0]['name'],
                  index: 0,

                ),
                libraries(
                  libraryName: libraryList[1]['name'],
                  index: 1,

                ),
                libraries(
                  libraryName: libraryList[2]['name'],
                  index: 2,
                ),
                screensList[selectedLibrary]
              ],
            ),
          ),

      ),
    );
  }
}
