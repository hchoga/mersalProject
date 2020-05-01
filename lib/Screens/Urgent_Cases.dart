import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'TEST.dart';

class UrgentCases extends StatelessWidget {
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
          title: Text('Urgent Cases',
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 27,
                  fontWeight: FontWeight.normal)),
        ),
        body: PatientExtract());
  }
}

class PatientExtract extends StatelessWidget {
  final List<Product> loadedProduct = [
    Product(
      id: '1',
      goal: '18000L.E',
      percentage: 44,
      per: 44,
      imageUrl:
      'Images/homless.webp',
    ),
    Product(
      id: '2',
      goal: '16000L.E',
      percentage: 50,
      per: 50,
      imageUrl:
      'Images/hungry.webp',
    ),
    Product(
      id: '3',
      goal: '15000L.E',
      percentage: 53,
      per: 53,
      imageUrl:
      'Images/poor.jpg',
    ),
    Product(
      id: '4',
      goal: '17000L.E',
      percentage: 47,
      per: 47,
      imageUrl:
      'Images/volunt.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // -20 for card margin
    final double width = MediaQuery.of(context).size.width - 20;
    final double imageWidth = width * 0.40;
    // -16 for Column padding
    final double textWidth = width * 0.60 - 16;
    // TODO: implement build
    return ListView.builder(
        itemCount: loadedProduct.length,
        itemBuilder: (ctx, i) {
          return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: imageWidth,
                        child: AspectRatio(
                          aspectRatio: 8 / 10,
                          child: Image.asset(
                            loadedProduct[i].imageUrl,
                            fit: BoxFit.fill,
                            height: 180,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: imageWidth * 10/8 - 16 ,
                          width: textWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Spacer(flex: 1),

                              Text("${loadedProduct[i].per}%"),
                              //TODO:
                              SizedBox(
                                width:  textWidth * 0.98 , // width * 0.5,
                                child: StepProgressIndicator(
                                  totalSteps: 100,
                                  currentStep: loadedProduct[i].percentage,
                                  size: 6,
                                  padding: 0,
                                  selectedColor: Color(0xff039192),
                                  unselectedColor: Color(0xffECB720),
                                ),
                              ),

                              Spacer(flex: 3),

                              Padding(
                                padding: const EdgeInsets.only(top: 2, bottom: 1),
                                child: Text(
                                  "Case #${loadedProduct[i].id}",
                                  style:
                                  TextStyle(color: Colors.teal, fontSize: 18),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                              FittedBox(
                                ///** MUST have fixed size parent **
                                fit: BoxFit.fitWidth,
                                child: RichText(
                                  //   softWrap: true,
                                  text: TextSpan(
                                      style: TextStyle(
                                        //default textStyle
                                          color: Colors.grey,
                                          fontSize: 20),
                                      children: [
                                        TextSpan(text: 'Goal :'),
                                        TextSpan(
                                            text: loadedProduct[i].goal,
                                            style:
                                            TextStyle(color: Colors.amber)),
                                        TextSpan(text: 'Raised :'),
                                        TextSpan(
                                            text: '8000L.E ',
                                            style:
                                            TextStyle(color: Colors.teal))
                                      ]),
                                ),
                              ),

                              Spacer(flex: 7),

                              // now Row CrossAxisAlignment works since Column in SizedBox
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SizedBox(
                                    width: 90,
                                    height: 25,
                                    child: RaisedButton(
                                      elevation: 2,
                                      onPressed: () {},
                                      child: Center(
                                        child: Text(
                                          'Donate',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ),
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          new BorderRadius.circular(30),
                                          side: BorderSide(color: Colors.red)),
                                    ),
                                  ),
                                  //this structure to make button text takes more width and bigger font size
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 90,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          border:
                                          Border.all(color: Colors.black)),
                                      child: Center(
                                        child: Text(
                                          'Read More',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(flex: 1)
                            ],
                          ),
                        ),
                      )
                    ],
                  )));

//          return Padding(
//            padding: EdgeInsets.all(15),
//            child: Container(
//              width: width,
//              height: 160,
//              decoration: new BoxDecoration(
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.grey,
//                    blurRadius: 1,
//                    // has the effect of softening the shadow
//                    spreadRadius: 0,
//                    // has the effect of extending the shadow
//                    offset: Offset(
//                      1.0, // horizontal, move right 10
//                      1.0, // vertical, move down 10
//                    ),
//                  )
//                ],
//                color: Colors.white,
//                border: new Border.all(color: Colors.white),
//                borderRadius: new BorderRadius.all(Radius.circular(5)),
//              ),
//              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  AspectRatio(
//                    aspectRatio: 8 / 10,
//                    child: Image.network(
//                      loadedProduct[i].imageUrl,
//                      fit: BoxFit.fill,
//                    ),
//                  ),
//                  Column(
//                    textDirection: TextDirection.rtl,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Spacer(
//                        flex: 1,
//                      ),
//                      Text(
//                        "75%",
//                      ),
//                      FittedBox(
//                        fit: BoxFit.fitWidth,
//                        child: Container(
//                          width: width * 0.5,
//                          child: StepProgressIndicator(
//                            totalSteps: 100,
//                            currentStep: 32,
//                            size: 6,
//                            padding: 0,
//                            selectedColor: Color(0xff039192),
//                            unselectedColor: Color(0xffECB720),
//                          ),
//                        ),
//                      ),
//                      Spacer(
//                        flex: 3,
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.only(top: 2, bottom: 1),
//                        child: Text(
//                          "Case #1728",
//                          style: TextStyle(color: Colors.teal, fontSize: 18),
//                          textAlign: TextAlign.left,
//                          textDirection: TextDirection.ltr,
//                        ),
//                      ),
//                      FittedBox(
//                        fit: BoxFit.fitWidth,
//                        child: RichText(
//                          text: TextSpan(children: [
//                            TextSpan(
//                                text: 'Goal :',
//                                style: TextStyle(
//                                    color: Colors.grey,
//                                    fontSize: width * 0.05)),
//                            TextSpan(
//                                text: '17000L.E ',
//                                style: TextStyle(
//                                    color: Colors.amber,
//                                    fontSize: width * 0.04)),
//                            TextSpan(
//                                text: 'Raised :',
//                                style: TextStyle(
//                                    color: Colors.grey,
//                                    fontSize: width * 0.04)),
//                            TextSpan(
//                                text: '8000L.E ',
//                                style: TextStyle(
//                                    color: Colors.teal, fontSize: width * 0.04))
//                          ]),
//                        ),
//                      ),
//                      Spacer(
//                        flex: 20,
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceAround,
//                        children: <Widget>[
//                          Container(
//                            width: 90,
//                            height: 25,
//                            child: RaisedButton(
//                              onPressed: () {},
//                              child: Center(
//                                child: Text(
//                                  'Donate',
//                                  style: TextStyle(
//                                      color: Colors.white, fontSize: 12),
//                                ),
//                              ),
//                              color: Colors.red,
//                              shape: RoundedRectangleBorder(
//                                  borderRadius: new BorderRadius.circular(30),
//                                  side: BorderSide(color: Colors.red)),
//                            ),
//                          ),
//                          SizedBox(
//                            width: 3,
//                          ),
//                          Container(
//                            width: 85,
//                            height: 22,
//                            child: RaisedButton(
//                              onPressed: () {},
//                              child: Center(
//                                child: Text(
//                                  'Read More',
//                                  style: TextStyle(
//                                      color: Colors.white, fontSize: 10),
//                                ),
//                              ),
//                              color: Colors.black,
//                              shape: RoundedRectangleBorder(
//                                  borderRadius: new BorderRadius.circular(30),
//                                  side: BorderSide(color: Colors.black)),
//                            ),
//                          ),
//                        ],
//                      ),
//                      Spacer(
//                        flex: 15,
//                      )
//                    ],
//                  )
//                ],
//              ),
//            ),
//          );
        });
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
