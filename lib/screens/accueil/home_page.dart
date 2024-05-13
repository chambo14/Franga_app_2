import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/accueil/setting_page.dart';
import 'package:franga_agent/screens/retrait/depot_retrait_page.dart';
import 'package:franga_agent/screens/retrait/notification_page.dart';
import 'package:franga_agent/screens/transfert/menu_transaction_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/colors_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/accueil.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    height: 312,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(20),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SettingPage()));
                              },
                              child: Image.asset("assets/settings.png"),
                            ),
                            const Gap(230),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset("assets/fac.png"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NotificationPage()));
                              },
                              child: Container(
                                height: 45,
                                width: 45,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/group3.png")),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Image.asset(
                                  "assets/bell.png",
                                  width: 19.25,
                                  height: 25.28,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/group2.png"),
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  strings.string1,
                                  style: GoogleFonts.poppins(
                                    fontSize: 22.0,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5,
                                  ),
                                ),
                                const Gap(5),
                                Text(
                                  strings.string2,
                                  style: GoogleFonts.poppins(
                                    fontSize: 22.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              strings.string4,
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: ColorsUtil.KcircleGreen),
                            ),
                            const Gap(20),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(10),
              SizedBox(
                height: 450,
                child: ListView(
                  padding: const EdgeInsets.all(65),
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.002,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 25,
                                left: 0,
                                child: Image.asset("assets/vector20.png")),
                            Positioned(
                                top: 25,
                                right: 0,
                                child: Image.asset("assets/des1.png")),
                            Positioned(
                                top: 15,
                                left: 80,
                                child: Image.asset("assets/qrcode2.png")),
                            Positioned(
                                top: 85,
                                left: 55,
                                child: Text("Scanner le code Qr", style: GoogleFonts.poppins(fontSize:15, fontWeight:FontWeight.w600, color:ColorsUtil.kblack),)),
                          ],
                        ),
                      ),
                    ),
                    const Gap(15),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DepotRetraitPage()));
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.height * 0.02,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 65,
                                  left: 0,
                                  child: Image.asset("assets/vector4.png")),

                              Positioned(
                                  top: 15,
                                  left: 80,
                                  child: Image.asset("assets/money.png", height: 80,)),
                              Positioned(
                                  top: 95,
                                  left: 65,
                                  child: Text("Dépot & retrait", style: GoogleFonts.poppins(fontSize:15, fontWeight:FontWeight.w600, color:ColorsUtil.kblack),)),
                            ],
                          )),
                    ),
                    const Gap(15),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MenuTransactionPage()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.height * 0.02,
                        decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 25,
                                left: 0,
                                child: Image.asset("assets/clipse2.png")),
                            Positioned(
                                top: 25,
                                right: 0,
                                child: Image.asset("assets/clipse.png")),
                            Positioned(
                                top: 15,
                                left: 80,
                                child: Image.asset("assets/cashing.png")),
                            Positioned(
                                top: 75,
                                left: 25,
                                child: Text("Transaction avec code", style: GoogleFonts.poppins(fontSize:15, fontWeight:FontWeight.w600, color:ColorsUtil.kblack),)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
