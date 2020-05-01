import 'package:flutter/material.dart';
import 'Urgent_Cases.dart';
import 'Mersal_Home.dart';
import 'Donation.dart';
import 'Sponsors.dart';
import 'About_Mersal.dart';
import 'Charitable_activities.dart';
import 'settings.dart';

class ListExtract extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListExtractBody();
  }
}

class ListExtractBody extends State<ListExtract> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        NavigationTile(
            image: 'Images/home.png', text: "Home", route: "Mersal Home"),
        const NavigationTile(
            image: 'Images/urgent.png',
            text: "Urgent cases",
            route: "Urgent Cases"),
        ////////////////// mfesh Urgent
        const NavigationTile(
            image: 'Images/chartiable.png',
            text: "Charitable activities",
            route: "Charitable"),
        const NavigationTile(
            image: 'Images/heart.png',
            text: "My Donation",
            route: 'My Donation'),

        //////////////////// Msh 3arefha
        const NavigationTile(image: 'Images/zakatek.png', text: "Pay zakat"),
        const NavigationTile(image: 'Images/rate.png', text: "Rate the app",route: "Rate App"),
        /////////////////////
        const NavigationTile(
          image: 'Images/settings.png',
          text: "Settings",
          route: 'Settings',
        ),
        const NavigationTile(
            image: 'Images/Info.png',
            text: "About Mersal",
            route: "About Mersal"),

        ///testing . . .
        ///   ///   ///

        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SocialMediaIcon(icon: 'Images/facebook.png'),
              SocialMediaIcon(icon: 'Images/insta.png'),
              SocialMediaIcon(icon: 'Images/youtube.png'),
            ],
          ),
        )
      ],
    );
  }
}

class NavigationTile extends StatelessWidget {
  const NavigationTile({this.image, this.text, this.route});

  final String image;
  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        //TODO: manage Navigator errors
        Navigator.of(context).pop();
        Navigator.pushNamed(context, route);
        // stack overflow not working
//        bool isNewRouteSameAsCurrent = true;
//        Navigator.popUntil(context, (currentRoute) {
//          if (currentRoute.settings.name == route) {
//            isNewRouteSameAsCurrent = true;
//          }
//          return true;
//        });
//
//        if (!isNewRouteSameAsCurrent) {
//          Navigator.pushNamed(context, route);
//        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 12),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Center(
                    child: Image.asset(
                      '$image',
                      width: 38,
                      height: 38,
                    )),
                SizedBox(width: 20),
                Text(text,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.start),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 12),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final String icon;
  final Function onTap;
  const SocialMediaIcon({this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        onTap();
      },
      child: Image.asset(icon, width: 30, height: 30),
    );
  }
}