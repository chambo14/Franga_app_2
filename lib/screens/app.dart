import 'dart:async';

import 'package:flutter/material.dart';
import 'package:franga_agent/screens/connexion/onboarding_page.dart';
import 'package:franga_agent/screens/connexion/splash_page.dart';
import 'package:franga_agent/screens/connexionquotidienne/connexion_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  String? code = "";
  // loadData()async{
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   code = sp.getString('pinput') ?? '';
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPage();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(),
    );
  }
  void getPage()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    code = sp.getString("pinput");
    if(code!=null){
      getfonction();
    }else {getsplash();}

  }
 void getfonction(){
   Navigator.pushAndRemoveUntil(
       context, MaterialPageRoute(builder: (context) => const SplashPage()),(Route<dynamic> route) => false);
  }
  void getsplash(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnBoardingPage()));
  }
}
