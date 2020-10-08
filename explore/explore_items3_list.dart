import 'package:akhdar/bottomnai/explore/explore_items3.dart';
import 'package:flutter/material.dart';

class ExploreList3 extends StatefulWidget {
  @override
  _ExploreList3State createState() => _ExploreList3State();
}

class _ExploreList3State extends State<ExploreList3> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: 9,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return ExploreItems3();
          },
        )
    );
  }
}

