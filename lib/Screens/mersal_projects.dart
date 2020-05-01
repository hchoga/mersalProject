import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersal/Screens/Mersal_Home.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'TEST.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                color: Colors.teal,
                size: 35,
              )),
          title: Text('Mersal Projects',
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 28,
                  fontWeight: FontWeight.normal)),
        ),
        body: PatientExtract());
  }
}

class PatientExtract extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // -20 for card margin
    final double width = MediaQuery.of(context).size.width - 20;
    final double imageWidth = width * 0.40;
    // -16 for Column padding
    final double textWidth = width * 0.60 - 16;
    // TODO: implement build
    return Container(
      width: 300,height: 330,
      child: ProjectDonation(
        image: 'Images/talkkkkkkk.jpg',
        text: 'Communication',
        percentageNum: '£20000/£30000',
        percentage: '66%',),
    );
  }
}

//Padding(
//                    padding: EdgeInsets.only(bottom: 2),
//                    child: Row(children: <Widget>[
//                      Text("Goal :17000 L.E",style: TextStyle(color:Colors.teal,fontSize: 15),),
//                    SizedBox(width: width*0.060,),
//                      Text("  Raised:8000L.E",style: TextStyle(color:Colors.teal,fontSize: 15),),
//                    ],),
//                  )

//

//
