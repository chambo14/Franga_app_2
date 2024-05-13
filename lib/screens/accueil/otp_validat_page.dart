import 'dart:async';

import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/accueil/main_menu_page.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpValidatePage extends StatefulWidget {
  const OtpValidatePage({super.key});

  @override
  State<OtpValidatePage> createState() => _OtpValidatePageState();
}

class _OtpValidatePageState extends State<OtpValidatePage> {
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
            Text(strings.string22, style: GoogleFonts.poppins(
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