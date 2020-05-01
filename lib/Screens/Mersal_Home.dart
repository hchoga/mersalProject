import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';
import 'Treat_Patient.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'Navigation_Menu.dart';
import 'Donation.dart';
import 'Sponsors.dart';
import 'Charitable_activities.dart';
import 'package:rate_my_app/rate_my_app.dart';

Sponsors spon = Sponsors();
Modal modal = new Modal();
Modal2 modal1 = new Modal2();

class MersalHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Mesralhomepage();
  }
}

class Mesralhomepage extends State<MersalHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    spon.getData();
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
          child: Drawer(child: ListExtract()),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
                height: height * 0.22,
                width: width,
                child: Carousel(
                  images: [
                    ExactAssetImage("Images/Slider1.png"),
                  ],
                  showIndicator: false,
                  borderRadius: false,
                )),
            Container(
              width: width,
              height: 10,
              color: Color(0xffDFDFDF),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12, top: 10),
                  child: Text(
                    "Charitable activities",
                    style: TextStyle(color: Colors.teal, fontSize: 28),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0, top: 12),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pushNamed(context, "Charitable");
                    },
                    child: Text(
                      'see more',
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            AspectRatio(
              aspectRatio: 10 / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.pushNamed(context, "Treat");
                      },
                      /*Navigator.push(context, MaterialPageRoute(builder: (context){
                   return RateMyAppTestApp();
                 })); */
                      child: CharitableExtract(
                        image: 'Images/patientt.png',
                        text: "Treat a patient",
                      )),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: new Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffDFDFDF),
              ),
              width: width,
              height: 10,
            ),
            // Divder
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 10),
                  child: Text(
                    "Mersal Projects",
                    style: TextStyle(color: Colors.teal, fontSize: 30),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8, top: 10),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: (){
                      Navigator.pushNamed(context, "Mersal Projects");
                    },
                    child: Text(
                      'see more',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal),
                    ),
                  ),
                )
              ],
            ),

            ///  //////////////////////////////////////////////////////////////////
            AspectRatio(
              aspectRatio: 10 / 8,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 3 / 4,
                    child: ProjectDonation(
                      image: 'Images/talkkkkkkk.jpg',
                      text: 'Communication',
                      percentageNum: '£20000/£30000',
                      percentage: '66%',
                    ),
                  ),
                ],
              ),
            ),
            // Mersal Project
            Container(
              decoration: BoxDecoration(
                border: new Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffDFDFDF),
              ),
              width: width,
              height: 10,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 10),
                  child: Text(
                    "Our Sponsors",
                    style: TextStyle(color: Colors.teal, fontSize: 30),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8, top: 12),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pushNamed(context, "Sponsors");
                    },
                    child: Text(
                      'see more',
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.normal),
                    ),
                  ),
                )
              ],
            ),

            AspectRatio(
              aspectRatio: 10 / 3.8,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SponsorsExtract(
                    image: "Images/smsm.jpg",
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: new Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffDFDFDF),
              ),
              width: width,
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Mersal in numbers ",
                style: TextStyle(color: Colors.teal, fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(48.0),
                          boxShadow: [
                            new BoxShadow(color: Colors.grey, blurRadius: 2)
                          ]),
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35,
                          child: Image.asset(
                            'Images/donors.png',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        '10,000+',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Donors',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(48.0),
                          boxShadow: [
                            new BoxShadow(color: Colors.grey, blurRadius: 2)
                          ]),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 35,
                        child: Image.asset(
                          'Images/projects.png',
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        '20+',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Projects',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(48.0),
                          boxShadow: [
                            new BoxShadow(color: Colors.grey, blurRadius: 2.0)
                          ]),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 35,
                        child: Image.asset(
                          'Images/donation.png',
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        '36,000+',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Donations',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}

//class ProjectDonation extends StatelessWidget {
//  ProjectDonation({this.image, this.text, this.percentageNum, this.percentage});
//
//  final String image, text, percentageNum, percentage;
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Padding(
//      padding: EdgeInsets.all(8),
//      child: Container(
//        decoration: new BoxDecoration(
//          boxShadow: [
//            BoxShadow(
//              color: Colors.grey,
//              blurRadius: 1,
//              // has the effect of softening the shadow
//              spreadRadius: 0,
//              // has the effect of extending the shadow
//              offset: Offset(
//                1.0, // horizontal, move right 10
//                1.0, // vertical, move down 10
//              ),
//            )
//          ],
//          color: Colors.white,
//          border: new Border.all(color: Colors.white),
//          borderRadius: new BorderRadius.all(Radius.circular(8)),
//        ),
//        width: 220,
//        height: 320,
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            Container(
//              width: 220,
//              height: 180,
//              child: new Image.asset(
//                '$image',
//              ),
//            ),
//            Spacer(
//              flex: 5,
//            ),
//            Text(
//              "$text",
//              style: TextStyle(
//                  color: Colors.teal,
//                  fontSize: 30,
//                  fontWeight: FontWeight.bold),
//            ),
//            Padding(
//              padding: EdgeInsets.only(left: 5, right: 5, top: 7),
//              child: Row(
//                children: <Widget>[
//                  Text(
//                    '$percentageNum',
//                    style: TextStyle(
//                        color: Color(0xff039192),
//                        fontWeight: FontWeight.bold,
//                        fontSize: 15),
//                  ),
//                  Spacer(
//                    flex: 2,
//                  ),
//                  Text(
//                    '$percentage',
//                    style: TextStyle(
//                        color: Color(0xff039192),
//                        fontWeight: FontWeight.bold,
//                        fontSize: 15),
//                  )
//                ],
//              ),
//            ),
//            Padding(
//              padding: EdgeInsets.only(left: 5, right: 5, bottom: 2),
//              child: StepProgressIndicator(
//                totalSteps: 100,
//                currentStep: 32,
//                size: 6,
//                padding: 0,
//                selectedColor: Color(0xff039192),
//                unselectedColor: Color(0xffECB720),
//              ),
//            ),
//            FlatButton(
//              padding: EdgeInsets.all(0),
//              onPressed: () {
//                return modal.mainBottomSheet(context);
//              },
//              child: Container(
//                width: 110,
//                height: 35,
//                decoration: new BoxDecoration(
//                  color: Color(0xffF51546),
//                  border: new Border.all(color: Colors.white),
//                  borderRadius: new BorderRadius.circular(50),
//                ),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
//                  children: <Widget>[
//                    SizedBox(
//                      height: 5,
//                      width: 5,
//                    ),
//                    Container(
//                      height: 20,
//                      width: 20,
//                      child: Center(
//                          child: Image.asset(
//                            'Images/donatee.png',
//                            color: Colors.white,
//                          )),
//                    ),
//                    Center(
//                      child: new Text(
//                        'Donate',
//                        style:
//                        new TextStyle(fontSize: 18.0, color: Colors.white),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}

class ProjectDonation extends StatelessWidget {
  ProjectDonation({this.image, this.text, this.percentageNum, this.percentage});

  final String image, text, percentageNum, percentage;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context, constrains) {
      return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: SizedBox(
            height: constrains.maxHeight,
            width: constrains.maxWidth,
            child: Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(

                  '$image',
                  fit: BoxFit.fill,
                  width: constrains.maxWidth,

                ),

                Spacer(flex: 1),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Spacer(flex: 2),

                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 7),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '$percentageNum',
                        style: TextStyle(
                            color: Color(0xff039192),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),

                      Spacer(flex: 2),

                      Text(
                        '$percentage',
                        style: TextStyle(
                            color: Color(0xff039192),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),

                // Progress Indicator
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, bottom: 2),
                  child: StepProgressIndicator(
                    totalSteps: 100,
                    currentStep: 32,
                    size: 6,
                    padding: 0,
                    selectedColor: Color(0xff039192),
                    unselectedColor: Color(0xffECB720),
                  ),
                ),

                Spacer(flex:1),

                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () => modal.mainBottomSheet(context),
                  child: Container(
                    width: 110,
                    height: 35,
                    decoration: new BoxDecoration(
                      color: Color(0xffF51546),
                      border: new Border.all(color: Colors.white),
                      borderRadius: new BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(width: 5),
                        Image.asset(
                          'Images/donatee.png',
                          color: Colors.white,
                          height: 20,
                          width: 20,
                        ),
                        Text('Donate',
                            style: const TextStyle(
                                fontSize: 18.0, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Spacer(flex:1),
              ],
            ),
          ),
        ),
      );
    });
  }
}
