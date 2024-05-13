import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/screens/solde/commission_agent_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCommissionPage extends StatefulWidget {
  const DetailCommissionPage({super.key});

  @override
  State<DetailCommissionPage> createState() => _DetailCommissionPageState();
}

class _DetailCommissionPageState extends State<DetailCommissionPage> {
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
                        image: AssetImage("assets/brownwallet.png"))),
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
                left: 20,
                top: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 1, top: 5),
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
                                color: Colors.black,
                                borderRadius:
                                BorderRadius.all(Radius.circular(33))),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: ColorsUtil.textColor1,
                              size: 17,
                            ),
                          ),
                        ],
                      )),
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
                    image: DecorationImage(image: AssetImage("assets/shape.png")),
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
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Commissions",
                                style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: ColorsUtil.kblack),
                              ),
                              const Gap(5),
                              Text(
                                "sous-agents",
                                style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: ColorsUtil.kblack),
                              ),
                            ],
                          ),
                          const Gap(8),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CommissionAgentPage()));
                            },
                            child: Container(
                              height: 36,
                              width: 341,
                              padding: const EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: ColorsUtil.KcircleGreen)),
                              child: Row(
                                children: [
                                  Text(
                                    "Détails des commissions",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: ColorsUtil.kblack),
                                  ),
                                  const Gap(90),
                                  Image.asset("assets/Eye.png")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const Gap(10),
                      SizedBox(
                        height: 400,
                        child: ListView(
                          padding: const EdgeInsets.only(left: 20),
                          children: [
                            Text(
                              "Brice",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                            const Gap(10),
                            Row(
                              children: [
                                Container(
                                  width: 155,
                                  height: 109,
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
                                          top: 37,
                                          left: -8,
                                          child: Image.asset(
                                              "assets/UpRight2.png")),

                                      Positioned(
                                          top: 15,
                                          left: 5,
                                          child: Text(
                                            "Commission sur retrait",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: ColorsUtil.textColor1),
                                          )),
                                      Positioned(
                                          top: 55,
                                          left: 30,
                                          child: Row(
                                            children: [
                                              Text(
                                                "80.000",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                              const Gap(5),
                                              Text(
                                                "Fc",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                                const Gap(10),
                                Container(
                                  width: 155,
                                  height: 109,
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
                                          top: 0,
                                          right: 0,
                                          child: Image.asset(
                                              "assets/UpRight.png")),

                                      Positioned(
                                          top: 15,
                                          left: 5,
                                          child: Text(
                                            "Commission sur dépôt",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: ColorsUtil.textColor1),
                                          )),
                                      Positioned(
                                          top: 55,
                                          left: 30,
                                          child: Row(
                                            children: [
                                              Text(
                                                "52.000",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                              const Gap(5),
                                              Text(
                                                "Fc",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Gap(10),
                            Text(
                              "Hélène",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                            const Gap(10),
                            Row(
                              children: [
                                Container(
                                  width: 155,
                                  height: 109,
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
                                          top: 37,
                                          left: -8,
                                          child: Image.asset(
                                              "assets/UpRight2.png")),

                                      Positioned(
                                          top: 15,
                                          left: 5,
                                          child: Text(
                                            "Commission sur retrait",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: ColorsUtil.textColor1),
                                          )),
                                      Positioned(
                                          top: 55,
                                          left: 30,
                                          child: Row(
                                            children: [
                                              Text(
                                                "80.000",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                              const Gap(5),
                                              Text(
                                                "Fc",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                                const Gap(10),
                                Container(
                                  width: 155,
                                  height: 109,
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
                                          top: 0,
                                          right: 0,
                                          child: Image.asset(
                                              "assets/UpRight.png")),

                                      Positioned(
                                          top: 15,
                                          left: 5,
                                          child: Text(
                                            "Commission sur dépôt",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: ColorsUtil.textColor1),
                                          )),
                                      Positioned(
                                          top: 55,
                                          left: 30,
                                          child: Row(
                                            children: [
                                              Text(
                                                "52.000",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                              const Gap(5),
                                              Text(
                                                "Fc",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Gap(10),
                            Text(
                              "Charles",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                            const Gap(10),
                            Row(
                              children: [
                                Container(
                                  width: 155,
                                  height: 109,
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
                                          top: 37,
                                          left: -8,
                                          child: Image.asset(
                                              "assets/UpRight2.png")),

                                      Positioned(
                                          top: 15,
                                          left: 5,
                                          child: Text(
                                            "Commission sur retrait",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: ColorsUtil.textColor1),
                                          )),
                                      Positioned(
                                          top: 55,
                                          left: 30,
                                          child: Row(
                                            children: [
                                              Text(
                                                "80.000",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                              const Gap(5),
                                              Text(
                                                "Fc",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                                const Gap(10),
                                Container(
                                  width: 155,
                                  height: 109,
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
                                          top: 0,
                                          right: 0,
                                          child: Image.asset(
                                              "assets/UpRight.png")),

                                      Positioned(
                                          top: 15,
                                          left: 5,
                                          child: Text(
                                            "Commission sur dépôt",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: ColorsUtil.textColor1),
                                          )),
                                      Positioned(
                                          top: 55,
                                          left: 30,
                                          child: Row(
                                            children: [
                                              Text(
                                                "52.000",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                              const Gap(5),
                                              Text(
                                                "Fc",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorsUtil.textColor1),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),),
                      const Gap(10),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
