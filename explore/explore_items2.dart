import 'package:flutter/material.dart';

class ExploreItems2 extends StatefulWidget {
  @override
  _ExploreItems2State createState() => _ExploreItems2State();
}

class _ExploreItems2State extends State<ExploreItems2> {

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
        _images('assets/images/items1.jpg'),
        _images('assets/images/items2.jpg'),
        _images('assets/images/items3.jpg'),
        _images('assets/images/items4.jpg'),
        _images('assets/images/items5.jpg'),
        _images('assets/images/items6.jpg'),
        _images('assets/images/items7.jpg'),
        _images('assets/images/items8.jpg'),
        _images('assets/images/items9.jpg'),
        _images('assets/images/items10.jpg'),
      ],
    );
  }
}
