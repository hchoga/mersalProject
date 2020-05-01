import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersal/Screens/Navigation_Menu.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Sponsors extends StatelessWidget{
  void getData () async {
    Response response = await get('https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=6236b89322bcfab4928574952a8eb87c');
   var data = jsonDecode(response.body)['main']['temp'];

     print(data);
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
        child: Drawer(
            child: ListExtract()

        ),
      ),
      body: Column(

        children: <Widget>[
          Row(
            children: <Widget>[
              Spacer(flex: 1,),
              Padding(
                padding: const EdgeInsets.only( top: 15),
                child: Text(
                  "Our Sponsors",textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
              ),
              Spacer(flex:7)
            ],
          ),
          Padding(
            padding:  EdgeInsets.all(10),
            child:  GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1 /1,
                crossAxisSpacing: 0.2,
                mainAxisSpacing: 0.2,

              ),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context,i){
                return SponsorsExtract(image: "Images/smsm.jpg",);




              },
            ),
          ),
        ],
      ),
    );
  }
}


class SponsorsExtract extends StatelessWidget{
  SponsorsExtract({this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
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
            borderRadius:
            new BorderRadius.all(Radius.circular(8)),
          ),
          width: 120,
          height: 110,
          child: Center(
              child: new Image.asset(
                '$image',
                width: 110,
                height: 80,
              ))),
    );
  }

}