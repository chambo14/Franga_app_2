import 'dart:async';

import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:google_fonts/google_fonts.dart';

import '../accueil/main_menu_page.dart';

class OtpClientPage extends StatefulWidget {
  const OtpClientPage({super.key});

  @override
  State<OtpClientPage> createState() => _OtpClientPageState();
}

class _OtpClientPageState extends State<OtpClientPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      returnMenuApp();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtil.backgroundOTP,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/otp_verif.png"),
              Text(strings.string23, style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: ColorsUtil.black,
                  fontWeight: FontWeight.w700),),
            ],
          ),
        )
    );
  }
  returnMenuApp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MainMenuPage()));
  }
}

