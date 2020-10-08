import 'package:akhdar/bottomnai/explore/explore_items2.dart';
import 'package:flutter/material.dart';

class ExploreList2 extends StatefulWidget {
  @override
  _ExploreList2State createState() => _ExploreList2State();
}

class _ExploreList2State extends State<ExploreList2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return ExploreItems2();
          },
        )
    );
  }
}
