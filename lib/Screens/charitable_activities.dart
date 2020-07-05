import 'package:flutter/material.dart';
import 'package:mersal/widgets/drawer_menu.dart';

import '../widgets/charitable_tile.dart';

class CharitableActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text('Charitable Activites'),
          centerTitle: true,
        ),
      ),
      drawer: DrawerMenu(),
      body: Column(
        children: <Widget>[
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,

              ///child aspect ratio
              childAspectRatio: 130 / 150,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, i) {
              return CharitableTile(
                image: 'Images/well.png',
                text: 'well driling',
              );
            },
          ),
        ],
      ),
    );
  }
}
