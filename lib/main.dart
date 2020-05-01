import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersal/Screens/Mersal_Home.dart';
import 'package:mersal/Screens/Sign_Up.dart';
import 'package:mersal/Screens/Sign_In.dart';
import 'package:mersal/Screens/Donation.dart';
import 'package:mersal/Screens/Sponsors.dart';
import 'package:mersal/Screens/About_Mersal.dart';
import 'package:mersal/Screens/Charitable_activities.dart';
import 'package:mersal/Screens/settings.dart';
import 'package:mersal/Screens/Treat_Patient.dart';
import 'package:mersal/Screens/Urgent_Cases.dart';
import 'package:mersal/Screens/My_Donation.dart';
import 'package:mersal/Screens/rate_app.dart';
import 'package:mersal/Screens/mersal_projects.dart';
import 'dart:io' show Platform;
void main() => runApp(
Platform.isIOS ? CupertinoApp : MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'Sign In',
      routes: {
        'Mersal Projects' : (context) => Projects(),
        'Rate App' : (context) => Rating(),
        'My Donation' :(context) => MyDonation(),
        'Urgent Cases' :(context) => UrgentCases(),
        'Treat' : (context) => TreatApatient(),
        'Settings' : (context) => Settings(),
        'About Mersal' : (context) => AboutMersal(),
        'Charitable' : (context) => Charitable(),
        'Sponsors' : (context) => Sponsors(),
        'Donation' : (context) => Home(),
        'Mersal Home' : (context) => MersalHome(),
        'Sign Up' : (context) => SignUp(),
        'Sign In' : (context) => SignIn()
      },
    )
);

