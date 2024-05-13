import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/screens/accueil/main_menu_page.dart';
import 'package:franga_agent/screens/connexionquotidienne/reinitialisation_code_page.dart';
import 'package:franga_agent/screens/gestion%20des%20sous%20agents/info_agent_page.dart';
import 'package:franga_agent/screens/gestion%20des%20sous%20agents/update_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/strings.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String? pinput = '';

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
              right: 250,
              top: 170,
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
              left: 10,
              top: 50,
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
                  Text("Entrez votre code secret pour vous connecter",
                      style: GoogleFonts.poppins(
                          color: ColorsUtil.textColor1,
                          fontSize: 15,
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
                  children: [
                    const Gap(50),
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
                    const Gap(10),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const ReinitialisationCodePage()));
                    }, child: Text(strings.string59,style: GoogleFonts.poppins(
                        color: ColorsUtil.Kgreen,
                        fontSize: 14,
                        fontWeight: FontWeight.w300))),
                    const Gap(30),
                    InkWell(
                      onTap: () async{
                        SharedPreferences sp = await SharedPreferences.getInstance();
                        if(pinput != sp.getString('pinput')){
                          getPage();
                        }else {
                          const AlertDialog(content: Text("Le code est incorrect"),);
                        }


                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade50)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void getPage(){
    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>const MainMenuPage()),(Route<dynamic> route) => false);
  }
}
