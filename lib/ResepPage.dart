import 'package:flutter/material.dart';

class ResepPage extends StatelessWidget {
  final String itemTitle;
  final String itemIngredients;
  final String itemImages;
  final String itemHowto;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  const ResepPage(
      {Key key,
      this.itemTitle,
      this.itemIngredients,
      this.itemImages,
      this.itemHowto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Detail' + ' ' + itemTitle,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Center(
            child: Container(
              height: 270,
              width: 620,
              child: Image.asset(itemImages),
            ),
          ),
          Container(
            color: Colors.white10,
            width: 620,
            padding: EdgeInsets.all(16.0),
            child: Text(
              itemTitle,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          Container(
            height: 2.0,
            width: 300.0,
            color: Colors.deepOrangeAccent,
          ),
          Container(
              padding: EdgeInsets.all(16),
              width: 620,
              color: Colors.black12,
              child: Text(itemIngredients)),
          Container(
              padding: EdgeInsets.all(8),
              child: Text("Cara Membuat : " + itemHowto)),
        ],
      ),
    );
  }
}
