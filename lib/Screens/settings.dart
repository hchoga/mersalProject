import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersal/Screens/Navigation_Menu.dart';
import 'package:mersal/Screens/Sign_In.dart';


class Settings extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 8, left: 8, bottom: 8),
        child: Column(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Row(
              children: <Widget>[
                Spacer(flex: 1,),
                Text(
                  "Settings",
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
                Spacer(flex: 18,)
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, blurRadius: 1,
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
                  borderRadius: new BorderRadius.all(Radius.circular(8)),
                ),
                width: 370,
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            child: Image.asset("Images/profile.png"),
                          ),
                          SizedBox(width: 20,),
                          Text("Profile",style: TextStyle(fontSize: 22),)
                        ],
                      ),
                      Divider(height: 25,color: Colors.grey,),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            child: Image.asset("Images/lang.png"),
                          ),
                          SizedBox(width: 20,),
                          Text("Language",style: TextStyle(fontSize: 22),)
                        ],
                      ),
                      Divider(height: 25,color: Colors.grey,)
                      ,FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: (){
                          Navigator.pushNamed(context, 'Sign In');
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              child: Image.asset("Images/logout.png"),
                            ),
                            SizedBox(width: 20,),
                            Text("Logout",style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
