import 'package:akhdar/bottomnai/profile/balance.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selctedTap =0 ;
  List<Map<String, dynamic>> tapsList = [
    {'name' : 'الرصيد', },
    {'name' : 'الترتيب', },
    {'name' : ' اللوحة',},
  ];
  Widget taps({String tapName , int index}) {
    bool isSelceted = selctedTap == index ;
    return InkWell(
      onTap: (){
        setState(() {

          selctedTap = index;
        });
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color : Color(0xFF1e7145),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
      ),
    );
  }
  Widget balance () {
    return BalanceScreen();

  }

  Widget order () {
    return Container(
      color: Colors.brown,
      child: Text('2'),
    );

  }

  Widget board () {
    return Container(
      color: Colors.teal,
      child: Text('3'),
    );

  }
  @override
  Widget build(BuildContext context) {
    List <Widget> screensList = [
      balance() , order() , board()
    ];
    return Column(
      children: <Widget>[
        taps
          (
          tapName: tapsList[0]['name'] ,
          index: 0,
        ),

        taps
          (
          tapName: tapsList[1]['name'] ,
          index: 1,
        ),

        taps
          (
          tapName: tapsList[2]['name'] ,
          index:2,
        ),
        screensList[selctedTap]
      ],
    );
  }
}
