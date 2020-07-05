import 'package:flutter/material.dart';
import 'Sign_Up.dart' show isEmail;

showProfileSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ProfileSheet();
      });
}

class ProfileSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: ListView(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: 'Email', hintText: 'Example@email.com'),
            onSubmitted: (email) {
              //TODO:validate
            },
          ),
          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              labelText: 'name',
              // hintText: ''
            ),
          ),
          SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
                icon: Image.asset(
                  'Images/settings/edit.png',
                  width: 25,
                  height: 25,
                ),
                labelText: 'Address 1'),
          ),
          SizedBox(height: 15),
          TextFormField(
            decoration: InputDecoration(
                icon: Image.asset(
                  'Images/settings/edit.png',
                  width: 25,
                  height: 25,
                ),
                labelText: 'Address 1',
              hintText: 'hintText',
              counterText: 'counter text',
              helperText: 'helper text',
              prefixText: 'prefix text',
              suffixText: 'suffix text'
            ),
          ),
        ],
      ),
    );
  }
}
