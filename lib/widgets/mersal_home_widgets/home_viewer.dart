import 'package:flutter/material.dart';

///basic home screen widget , contains horizontal ListView

class HomeViewer extends StatelessWidget {
  final String title;
  final String route;
  final List<Widget> view;
  final double listHeight;

  const HomeViewer({this.title, this.route, this.view, this.listHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16,left: 16,bottom: 10,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(color: Colors.teal, fontSize: 24),
                ),
                OutlineButton(
                  padding: EdgeInsets.all(0),
                  highlightedBorderColor: Colors.teal,
                  highlightColor: Colors.white,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 1.5)),
                  onPressed: () {
                    Navigator.pushNamed(context, route);
                  },
                  child: Text(
                    'see more',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: listHeight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: view,
            ),
          ),
        ],
      ),
    );
  }
}
