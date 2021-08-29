import 'package:flutter/material.dart';
import 'package:mobile_maintenance/About_App.dart';
import 'package:mobile_maintenance/Apple.dart';
import 'package:mobile_maintenance/Change_Password.dart';
import 'package:mobile_maintenance/ComplaintsAndSuggestions.dart';
import 'package:mobile_maintenance/Forgot_Password.dart';
import 'package:mobile_maintenance/GalaxyNote10Details.dart';
import 'package:mobile_maintenance/GalaxyNote10Services.dart';
import 'package:mobile_maintenance/GalaxyS6Details.dart';
import 'package:mobile_maintenance/GalaxyS6_Services.dart';
import 'package:mobile_maintenance/Iphone13Details.dart';
import 'package:mobile_maintenance/Iphone13Services.dart';
import 'package:mobile_maintenance/IphoneXsDetails.dart';
import 'package:mobile_maintenance/IphoneXsServices.dart';
import 'package:mobile_maintenance/Login_Screen.dart';
import 'package:mobile_maintenance/Main_Screen.dart';
import 'package:mobile_maintenance/Mi10Details.dart';
import 'package:mobile_maintenance/Mi10Services.dart';
import 'package:mobile_maintenance/New_Registration.dart';
import 'package:mobile_maintenance/Password_Reset.dart';
import 'package:mobile_maintenance/Personal_Profile.dart';
import 'package:mobile_maintenance/PocoX3Details.dart';
import 'package:mobile_maintenance/PocoX3Services.dart';
import 'package:mobile_maintenance/Requests.dart';
import 'package:mobile_maintenance/Samsung.dart';
import 'package:mobile_maintenance/TabBar.dart';
import 'package:mobile_maintenance/TermsAndConditions.dart';
import 'package:mobile_maintenance/TermsAndConditions1.dart';
import 'package:mobile_maintenance/User_Main_Screen.dart';
import 'package:mobile_maintenance/Xiaomi.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes:  {
        'Main_Screen':(context)=>MainScreen(),
        'Login_Screen':(context)=>LoginScreen(),
        'Samsung':(context)=>Samsung(),
        'Apple':(context)=>Apple(),
        'Xiaomi':(context)=>Xiaomi(),
        'ForgotPassword':(context)=>ForgotPassword(),
        'PasswordReset':(context)=>PasswordReset(),
        'NewRegistration':(context)=>NewRegistration(),
        'ComplaintsAndSuggestions':(context)=>ComplaintsAndSuggestions(),
        'AboutApp':(context)=>AboutApp(),
        'TermsAndConditions':(context)=>TermsAndConditions(),
        'TermsAndConditions1':(context)=>TermsAndConditions1(),
        'PersonalProfile':(context)=> PersonalProfile(),
        'ChangePassword':(context)=> ChangePassword(),
        'UserMainScreen':(context)=> UserMainScreen(),
        'Requests':(context)=> Requests(),
        'GalaxyS6Services':(context)=> GalaxyS6Services(),
        'GalaxyS6Details':(context)=> GalaxyS6Details(),
        'GalaxyNote10Services':(context)=> GalaxyNote10Services(),
        'GalaxyNote10Details':(context)=> GalaxyNote10Details(),
        'PocoX3Services':(context)=> PocoX3Services(),
        'PocoX3Details':(context)=> PocoX3Details(),
        'Mi10Services':(context)=> Mi10Services(),
        'Mi10Details':(context)=> Mi10Details(),
        'IphoneXsServices':(context)=> IphoneXsServices(),
        'IphoneXsDetails':(context)=> IphoneXsDetails(),
        'Iphone13Services':(context)=> Iphone13Services(),
        'Iphone13Details':(context)=> Iphone13Details(),
      }
    );
  }
}


