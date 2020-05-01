import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersal/Screens/Navigation_Menu.dart';

class Charitable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          iconTheme: new IconThemeData(color: Colors.teal),
          title: Row(
            children: <Widget>[
              Spacer(
                flex: 3,
              ),
              Image.asset('Images/Logo.png'),
            ],
          ),
          backgroundColor: Colors.white,
        ),
      ),
      drawer: Container(
        width: 350,
        child: Drawer(child: ListExtract()),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 100, top: 10),
            child: Text(
              "Charitable Activites",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.teal, fontSize: 30),
            ),
          ),
          Container(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, i) {
                return CharitableExtract(
                  image: 'Images/well.png',
                  text: 'well driling',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CharitableExtract extends StatelessWidget {
  CharitableExtract({this.image, this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 0, left: 5, right: 5, bottom: 0),
      child: Column(
        children: <Widget>[
          Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    // has the effect of softening the shadow
                    spreadRadius: 0,
                    // has the effect of extending the shadow
                    offset: Offset(
                      1.0, // horizontal, move right 10
                      1.0, // vertical, move down 10
                    ),
                  )
                ],
                color: Colors.white,
                border: new Border.all(color: Colors.white),
                borderRadius: new BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              ),
              width: 130,
              height: 105,
              child: Center(
                  child: new Image.asset(
                '$image',
                width: 110,
                height: 80,
              ))),
          Container(
            width: 130,
            height: 30,
            decoration: BoxDecoration(
                border: new Border.all(color: Colors.white),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4)),
                color: Color(0xffBDBDBD)),
            child: Center(
                child: Text(
              "$text",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            )),
          ),
        ],
      ),
    );
  }
}
