import 'package:flutter/material.dart';

class ExploreSearch extends StatefulWidget {
  @override
  _ExploreSearchState createState() => _ExploreSearchState();
}

class _ExploreSearchState extends State<ExploreSearch> {
  Widget cont (
  String title
      ) {
    return Container(
      width: 110,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFE9F2ED)
      ),
      child: Center(
          child: Text( title ,style: TextStyle(color: Color(0xFF123CA9)),)
      ),
    );
  }
  Widget _textField (
  {
    String hint , bool secure
}
      ) {
    return Padding (
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          obscureText: secure,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search,color: Color(0xffAAAAAA),),
            suffixIcon: Icon(Icons.cancel ),
            fillColor: Color(0xFFE4E4E4) ,
            hintText: hint,
            filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(width: 0)
              )
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width : 270,
                    height : 55 ,
                    child: _textField(
                        hint: "بحث عن" ,
                        secure: false ,
                      ),
                  ),
                  SizedBox(width: 15),
                  Text('الغاء' , style: TextStyle(color: Color(0xFF1e7145), fontSize: 20),)
                ],
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          cont('#ريادة_أعمال'),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
              cont('#تحسين_الذات') ,
                SizedBox(width: 3),
                cont('#تفكير_ايجابي') ,
                SizedBox(width: 3),
                cont('#ريادة_الأعمال') ,
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                cont('#مشاعر_سيئة') ,
                SizedBox(width: 3),
                cont('#ارشاد_أسري') ,
                SizedBox(width: 3),
                cont('#ثقافة_مالة') ,
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                cont('#تواصل_فعال') ,
                SizedBox(width: 3),
                cont('#تحفيز_الاخرين') ,
                SizedBox(width: 3),
                cont('#ريادة_الأعمال') ,
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                cont('#حكم_وافتباسات') ,
                SizedBox(width: 3),
                cont('#فلسفة_وفكر') ,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
