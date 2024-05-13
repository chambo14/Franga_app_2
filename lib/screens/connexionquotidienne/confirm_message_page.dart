import 'dart:async';

import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:google_fonts/google_fonts.dart';

import 'new_code_page.dart';

class ConfirmMessagePage extends StatefulWidget {
  const ConfirmMessagePage({super.key});

  @override
  State<ConfirmMessagePage> createState() => _ConfirmMessagePageState();
}

class _ConfirmMessagePageState extends State<ConfirmMessagePage> {
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
      backgroundColor: ColorsUtil.backgroundpage,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/success.png"),

            Text("Nouveau code secret enregistré",style: GoogleFonts.poppins(fontWeight:FontWeight.w700, fontSize:25.12,color:ColorsUtil.black,letterSpacing:0.57),)
          ],
        ),
      ),
    );
  }
  getAccessApp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const NewCodePage()));
  }
}
