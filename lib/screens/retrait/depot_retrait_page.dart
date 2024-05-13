import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:franga_agent/screens/accueil/depot_page.dart';
import 'package:franga_agent/screens/retrait/retrait_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/colors_util.dart';
import '../../core/utils/strings.dart';

class DepotRetraitPage extends StatefulWidget {
  const DepotRetraitPage({super.key});

  @override
  State<DepotRetraitPage> createState() => _DepotRetraitPageState();
}

class _DepotRetraitPageState extends State<DepotRetraitPage> {
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
              top: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
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
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(33))),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Positioned(
              right: -50,
              top: 20,
              child: Image.asset("assets/poto.png"

              ),
            ),
            Positioned(
              top: 170,
              right: 0,
              left: 0,
              child: Container(
                height: 725,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 100,left: 16,right: 16),
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
                  children: [
                    Text(strings.string18, style: GoogleFonts.poppins(fontSize:24, fontWeight:FontWeight.w600, color:ColorsUtil.kblack),),
                    const Gap(70),
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DepotPage()));
                      },
                      child: Container(
                        height: 56,
                        width: 390,
                        padding: const EdgeInsets.only(left:10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: ColorsUtil.backgroundContainer
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/cash_hand.png"),
                            const Gap(10),
                            Text(strings.string16,style: GoogleFonts.poppins(fontSize:20, fontWeight:FontWeight.w500, color:ColorsUtil.KcircleGreen))
                          ],
                        ),
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const RetraitPage()));
                      },
                      child: Container(
                        height: 56,
                        width: 390,
                        padding: const EdgeInsets.only(left:10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: ColorsUtil.backgroundContainer
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/receive_cash.png"),
                            const Gap(10),
                            Text(strings.string17, style: GoogleFonts.poppins(fontSize:20, fontWeight:FontWeight.w500, color:ColorsUtil.KcircleGreen))
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
