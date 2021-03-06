import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersal/widgets/drawer_menu.dart';

class Sponsors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: data getter
    //TODO: we don't need builder here since sponsors are not too much!
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text("Our Sponsors"),
          centerTitle: true,
        ),
      ),
      drawer: Drawer(child: DrawerMenu()),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        shrinkWrap: true,
        itemCount: sponsorsList.length,
        itemBuilder: (context, i) {
          return SponsorsItem(
            image: sponsorsList[i],
          );
        },
      ),
    );
  }
}

class SponsorsItem extends StatelessWidget {
  SponsorsItem({this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              // has the effect of softening the shadow
              spreadRadius: 0,
              // has the effect of extending the shadow
              offset: Offset(
                1.5, // horizontal, move right 10
                2.0, // vertical, move down 10
              ),
            )
          ],
          color: Colors.white,
          // border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        width: 120,
        height: 110,
        child: Image.asset(
          image,
          width: 110,
          height: 80,
        ));
  }
}

//just demo data
List<String> sponsorsList = [
  "Images/smsm.jpg",
  "Images/smsm.jpg",
  "Images/smsm.jpg",
  "Images/smsm.jpg",
  "Images/smsm.jpg"
];
