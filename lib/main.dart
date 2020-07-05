import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/mersal_home_screen.dart';
import 'Screens/Sign_Up.dart';
import 'Screens/login.dart';
import 'Screens/donation_sheet.dart';
import 'Screens/sponsors_screen.dart';
import 'Screens/About_Mersal.dart';
import 'Screens/charitable_activities.dart';
import 'Screens/settings_screen.dart';
import 'Screens/treat_patient_screen.dart';
import 'Screens/my_donation_screen.dart';
import 'Screens/rate_app.dart';
import 'Screens/projects_screen.dart';
import 'dart:io' show Platform;


///this file is up to date 3/5/2020 at 2:27PM
void main() => runApp(Platform.isIOS
    ? CupertinoApp
    : MaterialApp(
        theme: ThemeData(
          //primaryColor: Colors.white,
          appBarTheme: AppBarTheme(
              color: Colors.white,
              iconTheme: const IconThemeData(color: Colors.teal),
              textTheme: TextTheme(
                  title: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.w400))),
          //TODO: implement TextTheme
          //textTheme: TextTheme()
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'Sign In',
        routes: {
          'Mersal Projects': (context) => Projects(),
          'Rate App': (context) => Rating(),
          'My Donation': (context) => MyDonation(),
          TreatPatient.route: (context) => TreatPatient(),
          '/treat_patient/urgent': (context) => TreatPatient(
                isUrgent: true,
              ),
          //switch for urgent cases
          'Settings': (context) => Settings(),
          'About Mersal': (context) => AboutMersal(),
          'Charitable': (context) => CharitableActivities(),
          'Sponsors': (context) => Sponsors(),
        //  'Donation': (context) => DonationSheet(),
          'Mersal Home': (context) => MersalHome(),
          'Sign Up': (context) => SignUp(),
          'Sign In': (context) => SignIn()
        },
      ));
