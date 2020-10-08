import 'package:akhdar/bottomnai/explore/explore_items.dart';
import 'package:akhdar/bottomnai/explore/explore_items2.dart';
import 'package:akhdar/bottomnai/explore/explore_items3.dart';
import 'package:flutter/material.dart';

class ExploreList extends StatefulWidget {
  @override
  _ExploreListState createState() => _ExploreListState();
}

class _ExploreListState extends State<ExploreList> {

  @override
  Widget build(BuildContext context) {
    return
        SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context , index) {
                return ExploreItems();
              },
            )
        );

  }
}


