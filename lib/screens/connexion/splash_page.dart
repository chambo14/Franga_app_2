import 'dart:async';

import 'package:flutter/material.dart';
import 'package:franga_agent/screens/accueil/main_menu_page.dart';
import 'package:franga_agent/screens/connexion/onboarding_page.dart';
import 'package:franga_agent/screens/connexionquotidienne/connexion_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>  with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      getAccessApp();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.vertical,
        axisAlignment: -1,
        child: Center(
          child: Image.asset("assets/logo.png",width: 200,height: 133,),
        ),
      )
      
     

    );
  }
  getAccessApp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ConnexionPage()));
  }

}
