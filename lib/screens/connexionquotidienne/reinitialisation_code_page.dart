import 'package:flutter/material.dart';
import 'package:franga_agent/screens/connexionquotidienne/reinitialisation_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/colors_util.dart';
import '../../core/utils/strings.dart';

class ReinitialisationCodePage extends StatefulWidget {
  const ReinitialisationCodePage({super.key});

  @override
  State<ReinitialisationCodePage> createState() => _ReinitialisationCodePageState();
}

class _ReinitialisationCodePageState extends State<ReinitialisationCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient:  LinearGradient(
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
              right: MediaQuery.of(context).size.width/1.15,
              top: 50,
              child: Column(
                children: [
                  GestureDetector(
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

                ],
              ),
            ),
            Positioned(
              top: 200,
              right: MediaQuery.of(context).size.width/1.5,
              child: Container(
                height: 241,
                width: 241,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/overlay.png"))),
                padding: const EdgeInsets.only(left: 307),
              ),
            ),
            Positioned(
              right: 80,
              top: 30,
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
                  Text("Réinitialisez votre code secret",
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    Text(strings.string60,style: GoogleFonts.poppins(
                        color: ColorsUtil.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w600)),
                    Text(strings.string61,style: GoogleFonts.poppins(
                        color: ColorsUtil.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w600)),
                    Row(
                      children: [
                        Text(strings.string62,style: GoogleFonts.poppins(
                            color: ColorsUtil.black,
                            fontSize: 21,
                            fontWeight: FontWeight.w600)),
                        const Gap(10),
                        Text("0756981023",style: GoogleFonts.poppins(
                            color: ColorsUtil.Kgreen,
                            fontSize: 21,
                            fontWeight: FontWeight.w600)),
                      ],
                    ),

                    const Gap(10),

                    const Gap(30),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const ReinitialisationPage()));
                      },
                      child: Container(
                        height: 48,
                        width: 370,
                        decoration:  BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(16, 140, 61, 1),
                                Color.fromRGBO(4, 38, 17, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Envoyer",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: ColorsUtil.textColor1),
                            ),
                            const Gap(5),
                           const Icon(Icons.arrow_forward, color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
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
