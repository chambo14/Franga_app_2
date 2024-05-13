
import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/screens/solde/commission_agent_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SoldePage extends StatefulWidget {
  const SoldePage({super.key});

  @override
  State<SoldePage> createState() => _SoldePageState();
}

class _SoldePageState extends State<SoldePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/accueil.png"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              right: -50,
              top: 20,
              child: Container(
                height: 241,
                width: 241,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/coupon.png"))),
                padding: const EdgeInsets.only(left: 307),
              ),
            ),
            Positioned(
              right: -70,
              top: -30,
              child: Container(
                height: 241,
                width: 241,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/asterick2.png"))),
                padding: const EdgeInsets.only(left: 307),
              ),
            ),
            Positioned(
              right: -69,
              top: 90,
              child: Container(
                height: 241,
                width: 241,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/asterick2.png"))),
                padding: const EdgeInsets.only(left: 307),
              ),
            ),
            Positioned(
                left: 40,
                top: 120,
                child: Text(
                  "Solde",
                  style: GoogleFonts.poppins(
                      fontSize: 36,
                      color: ColorsUtil.KcircleGreen,
                      fontWeight: FontWeight.w600),
                )),
            Positioned(
              top: 225,
              right: 0,
              left: 0,
              child: Container(
                height: 725,
                width: 428,
                padding: const EdgeInsets.only(top: 0.5, left: 0, right: 0),
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
                child: Stack(
                  children: [
                    Positioned(child: Image.asset("assets/rectangle2.png")),
                    Positioned(
                        top: 30,
                        left: 45,
                        child: Container(
                          height: 129,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 40,
                                  left: 2,
                                  child: Image.asset("assets/Mithosis.png")),
                              Positioned(
                                  top: 0,
                                  right: -5,
                                  child: Image.asset("assets/mitho2.png")),
                              Positioned(
                                  top: 0,
                                  right: 1,
                                  child: Image.asset("assets/mitho2.png")),
                              Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Text(
                                    "Solde compte principal",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )),
                              Positioned(
                                  top: 45,
                                  left: 60,
                                  child: Row(
                                    children: [
                                      Text(
                                        "250.000",
                                        style: GoogleFonts.poppins(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            color: ColorsUtil.KcircleGreen),
                                      ),
                                      const Gap(10),
                                      Text(
                                        "FC",
                                        style: GoogleFonts.poppins(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                            color: ColorsUtil.KcircleGreen),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 150,
                        right: 1,
                        child: Image.asset("assets/mitho3.png")),
                    Positioned(
                        top: 170,
                        left: 1,
                        child: Image.asset("assets/mitho4.png")),
                    Positioned(
                        top: 190,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Commissions",
                              style: GoogleFonts.poppins(
                                  fontSize: 36,
                                  color: ColorsUtil.kblack,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Gap(10),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 129,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(31, 31, 31, 1),
                                      Color.fromRGBO(27, 26, 26, 1),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomLeft,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        right: 35,
                                        child: Image.asset(
                                            "assets/Intersect.png")),
                                    Positioned(
                                        left: 25,
                                        top: 10,
                                        child: Text(
                                          "Montant des commissions",
                                          style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: ColorsUtil.textColor1,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),),
                                    Positioned(
                                        top: 45,
                                        left: 60,
                                        child: Row(
                                          children: [
                                            Text(
                                              "120.000",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.w600,
                                                  color: ColorsUtil.textColor1),
                                            ),
                                            const Gap(10),
                                            Text(
                                              "FC",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                  color: ColorsUtil.textColor1),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            const Gap(30),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CommissionAgentPage()));
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Gap(30),
                                  Image.asset("assets/Purse.png"),
                                  const Gap(5),
                                  Text("Commisssions sous-agents",style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: ColorsUtil.kblack,
                                      fontWeight: FontWeight.w400),)
                                ],
                              ),
                            ),


                          ],
                        )),
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
