
import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/screens/connexion/number_connexion_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height / 2.1;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.black,
                child: Container(
                  height: height * 1.4,
                  width: width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(96))),
                ),
              ),
              Container(
                height: height * 0.7,
                width: width,
                padding: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(96))),
                child: Column(
                  children: [
                    Text(
                      "Agent",
                      style: GoogleFonts.poppins(
                          fontSize: 42,
                          color: Colors.white,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w700),
                    ),
                    const Gap(5),
                    Container(
                      width: 120,
                      height: 6,
                      decoration: BoxDecoration(
                          color: ColorsUtil.KcircleGreen,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    const Gap(8),
                    Text(
                      "Application de gestion pour les agents",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Franga",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const Gap(18),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const NumberConnexionPage()));
                      },
                      child:  Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: ColorsUtil.KcircleGreen,
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    )


                  ],
                ),
              ),
            ],
          ),
          Positioned(
              left: width * .2,
              top: height * .6,
              child: Image.asset(
                "assets/logo.png",
                width: 200,
                height: 133,
              ))
        ],
      ),
    );
  }

}
