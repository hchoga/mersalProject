import 'package:flutter/material.dart';

///this widget used in charitable activities screen & home screen
///should we present icon (80x80) or an image ?
///if the answer is image so make image fit attribute = BoxFit.cover
///
/// this widget should have a function on tap to navigate to required screen

class CharitableTile extends StatelessWidget {
  CharitableTile({this.image, this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(boxShadow: [
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
        ], color: Colors.white, borderRadius: new BorderRadius.circular(8)),
        width: 130,
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          //  clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: Center(
                      child: Image.asset(
                        image,
                        height: 80,
                        width: 80,
                      ))),
              Container(
                height: 30,
                color: Color(0xffBDBDBD),
                child: Center(
                  child: Text(
                    text,
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}