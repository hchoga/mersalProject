import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Modal2 modal1 = new Modal2();

class Modal {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Home();
        });
  }
}

class Modal2 {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: 400,
            height: 180,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Treat a Patient",
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),

                  Spacer(flex: 1),

                  Text(
                    "Well Drilling",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 20),
                  ),

                  Divider(color: Colors.grey),
                  Spacer(flex: 1),

                  Text(
                    "Care for the eldely",
                    style: TextStyle(fontSize: 20),
                  ),

                  Divider(color: Colors.grey),
                  Spacer(flex: 1),

                  Text(
                    "Feeding poor",
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(color: Colors.grey),
                ],
              ),
            ),
          );
        });
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Color activeColor = Colors.teal;
  Color notActiveColor = Colors.grey;
  int choose = 0;
  Widget content;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    content = smsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: new Image.asset(
                              'Images/donatee.png',
                              width: 25,
                              height: 25,
                            )),
                        SizedBox(width: 5),
                        Text(
                          "Donate",
                          style: TextStyle(color: Colors.teal, fontSize: 45),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35 ),
                      child: Divider(
                        height: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 15),
                      child: SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            item(
                                id: 0,
                                text: "SMS",
                                image: "Images/sms.png",
                                data: smsData()),
                            item(
                                id: 1,
                                text: "Credit Card",
                                image: "Images/credit-card.png",
                                data: creditCardData()),
                            item(
                                id: 2,
                                text: "Request \nan agent",
                                image: "Images/mandob.png",
                                data: agentData()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: content,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget item({String text, String image, @required int id, Widget data}) {
    return InkWell(
      onTap: () {
        setState(() {
          choose = id;
          content = data;
        });
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: choose == id ? activeColor : notActiveColor,
            child: new Image.asset(
              '$image',
              width: 30,
              height: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: SizedBox(
              width: 100,
              height: 43,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  style: TextStyle(color: Colors.teal, fontSize: 22),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget smsData() {
    return Column(
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
              borderRadius: new BorderRadius.all(Radius.circular(8)),
            ),
            width: 360,
            height: 35,
            child: Row(
              children: <Widget>[
                Image.asset("Images/cat.png",
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 5),
                Text(
                  'Choose a Charitable activity',
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.chevron_right),
                )
              ],
            )),
        DonateButton(),
      ],
    );
  }

  Widget creditCardData() {
    return Column(
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
              borderRadius: new BorderRadius.all(Radius.circular(8)),
            ),
            width: 360,
            height: 35,
            child: Row(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  child: Center(
                    child: Image.asset("Images/amount.png"),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Amount',
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.chevron_right),
                )
              ],
            )),

        //TODO: change flatButton to MaterialButton to match splash animation to child
        DonateButton(),

      ],
    );
  }

  Widget agentData() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        DonationService(
          image: "Images/cat.png",
          text: "Choose a charitable activity",
        ),
        DonationService(
          image: "Images/amount.png",
          text: "Amount",
        ),
        DonationService(
          image: "Images/address.png",
          text: "Choose your address",
        ),


        FlatButton( onPressed: (){
          return modal1.mainBottomSheet(context);
        },
            child: DonateButton()),
      ],
    );
  }
}

class DonationService extends StatelessWidget {
  DonationService({this.text, this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(7),
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
            borderRadius: new BorderRadius.all(Radius.circular(8)),
          ),
          width: 360,
          height: 35,
          child: Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                child: Center(
                  child: Image.asset("$image"),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                '$text',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.chevron_right),
              )
            ],
          )),
    );
  }
}

//Icon(icon,color: choose==id?activeColor:notActiveColor,),
//          Text("$title",style: TextStyle(color: choose==id?activeColor:notActiveColor,),)


class DonateButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    //TODO: change flatButton to MaterialButton to match splash animation to child
    return Padding(
      padding: const EdgeInsets.only(top:12),
      child: FlatButton(
        padding: const EdgeInsets.all(0),

        child: Container(
          width: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF51546),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'Images/donatee.png',
                color: Colors.white,
                height: 20,
                width: 20,
              ),
              SizedBox(width: 5,),
              Text(
                'Donate Now',
                style:const TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
