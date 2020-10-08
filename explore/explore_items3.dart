import 'package:flutter/material.dart';

class ExploreItems3 extends StatefulWidget {
  @override
  _ExploreItems3State createState() => _ExploreItems3State();
}

class _ExploreItems3State extends State<ExploreItems3> {
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
      _images('assets/images/itm1.jpg'),
        _images('assets/images/itm2.jpg'),
        _images('assets/images/itm3.jpg'),
        _images('assets/images/itm4.jpg'),
        _images('assets/images/itm5.jpg'),
        _images('assets/images/itm6.jpg'),
        _images('assets/images/itm7.jpg'),
        _images('assets/images/itm8.jpg'),
        _images('assets/images/itm9.jpg'),
      ],
    )
    ;
  }
}
