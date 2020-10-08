import 'package:flutter/material.dart';

class ExploreItems extends StatefulWidget {
  @override
  _ExploreItemsState createState() => _ExploreItemsState();
}

class _ExploreItemsState extends State<ExploreItems> {

  Widget _images (
      String _image
      ) {
    return
      Container(
        width: 300,
        height: 300,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
                image: AssetImage(_image) ,
                fit: BoxFit.cover
            )
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          _images('assets/images/ex1.jpg'),
          _images('assets/images/ex2.jpg'),
          _images('assets/images/ex3.jpg'),
          _images('assets/images/ex4.jpg'),
          _images('assets/images/ex5.jpg'),
          _images('assets/images/ex6.jpg'),
        ],
      );
  }
}
