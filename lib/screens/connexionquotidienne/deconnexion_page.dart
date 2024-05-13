import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/screens/connexionquotidienne/reinitialisation_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../core/utils/strings.dart';
import 'connexion_page.dart';

class DeconnexionPage extends StatefulWidget {
  const DeconnexionPage({super.key});

  @override
  State<DeconnexionPage> createState() => _DeconnexionPageState();
}

class _DeconnexionPageState extends State<DeconnexionPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(16, 140, 61, 1),
              Color.fromRGBO(0, 0, 0, 1),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 250,
              top: 50,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 33,
                              width: 33,
                              padding: const EdgeInsets.only(left: 5),
                              decoration: const BoxDecoration(
                                  color: Colors.white,

                                  borderRadius:  BorderRadius.all(
                                      Radius.circular(33))),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: ColorsUtil.Kgreen,
                                size: 17,
                              ),
                            ),
                          ],
                        )),
                  ),
                  const Gap(90),
                  Container(
                    height: 241,
                    width: 241,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/overlay.png"))),
                    padding: const EdgeInsets.only(left: 307),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 70,
              top: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/group2.png"),
                  Text(
                    "Hello Charlotte ",
                    style: GoogleFonts.poppins(
                        color: ColorsUtil.textColor1,
                        fontSize: 28,
                        fontWeight: FontWeight.w500),
                  ),
                  Text("Réinitialisez votre code",
                      style: GoogleFonts.poppins(
                          color: ColorsUtil.textColor1,
                          fontSize: 16,
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            Positioned(
              top: 255,
              right: 0,
              left: 0,
              child: Container(
                height: 725,
                width: 428,
                padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
                decoration: const BoxDecoration(
                    color: ColorsUtil.textColor1,
                    boxShadow: [
                      BoxShadow(
                        color: ColorsUtil.shadow,
                        blurRadius: 61.5,
                        spreadRadius: -14,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(45),
                        topLeft: Radius.circular(45))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Gap(50),
                    Text("Enregistrez votre nouveau code secret", style: GoogleFonts.poppins(fontSize:22.83, color:ColorsUtil.kblack, fontWeight:FontWeight.w600),),
                    const Gap(30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: SizedBox(
                        width: width,
                        child: Pinput(
                          length: 4,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          defaultPinTheme: PinTheme(
                            height: 57.0,
                            width: 57.0,
                            textStyle: GoogleFonts.poppins(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: ColorsUtil.textColor1,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                          focusedPinTheme: PinTheme(
                            height: 57.0,
                            width: 57.0,
                            textStyle: GoogleFonts.poppins(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: ColorsUtil.textColor1,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Gap(40),
                    TextButton(onPressed: (){}, child: Text("J'ai oublié mon code secret", style: GoogleFonts.poppins(
                        color: ColorsUtil.Kgreen,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),)),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
