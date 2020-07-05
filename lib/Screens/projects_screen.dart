import 'package:flutter/material.dart';
import '../demo_data.dart';
import '../widgets/item_card.dart';

//TODO: use dynamic data flow, remove demoData form here
class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
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
            title: Text('Mersal Projects'),
            centerTitle: true,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, i) => ItemCard(demoProjects[i]),
          itemCount: demoProjects.length,
        ));
  }
}
