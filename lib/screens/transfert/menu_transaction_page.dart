import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/screens/retraitbyclient/retrait_client_page.dart';
import 'package:franga_agent/screens/transfert/transfer_code_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/strings.dart';

class MenuTransactionPage extends StatefulWidget {
  const MenuTransactionPage({super.key});

  @override
  State<MenuTransactionPage> createState() => _MenuTransactionPageState();
}

class _MenuTransactionPageState extends State<MenuTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/accueil.png"), fit: BoxFit.cover)),
        child:Stack(
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
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Positioned(
              right: -50,
              top: 50,
              child: Container(
                height: 241,
                width: 241,
                decoration: const BoxDecoration(

                    image: DecorationImage(
                        image: AssetImage("assets/cashcoins.png")
                    )
                ),
                padding: const EdgeInsets.only(left: 307),

              ),
            ),
            Positioned(
              top: 170,
              right: 0,
              left: 0,
              child: Container(
                height: 725,
                width: 428,
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
                    Text(strings.string28, style: GoogleFonts.poppins(fontSize:24, fontWeight:FontWeight.w600, color:ColorsUtil.kblack),),
                    const Gap(70),
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const RetraitClientPage()));
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
                            Image.asset("assets/wallet2.png"),
                            const Gap(10),
                            Text(strings.string29,style: GoogleFonts.poppins(fontSize:20, fontWeight:FontWeight.w500, color:ColorsUtil.KcircleGreen))
                          ],
                        ),
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const TransfertCodePage()));
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
                            Image.asset("assets/coins1.png"),
                            const Gap(10),
                            Text(strings.string30, style: GoogleFonts.poppins(fontSize:20, fontWeight:FontWeight.w500, color:ColorsUtil.KcircleGreen))
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
