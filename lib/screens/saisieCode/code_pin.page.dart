import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/accueil/main_menu_page.dart';
import 'package:franga_agent/screens/transfert/splash_validate_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:pinput/pinput.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CodePinPage extends StatefulWidget {
  const CodePinPage({super.key});

  @override
  State<CodePinPage> createState() => _CodePinPageState();
}

class _CodePinPageState extends State<CodePinPage> {
  String pinput= "";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const  BoxDecoration(
          color: Colors.white
           // image: DecorationImage(image: AssetImage("assets/accueil.png"))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2, top: 40),
                child: Row(
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
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  border:
                                  Border.all(color: Colors.grey.shade300),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ],
                        )),
                    const Gap(15),
                    Text(
                      strings.string25,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: ColorsUtil.black),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Text(
                strings.string63,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorsUtil.black),
              ),


              SizedBox(
                height: height * 0.1,
              ),

              /// pinput package we will use here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: SizedBox(
                  width: width,
                  child: Pinput(
                    length: 4,
                    onChanged: (value){pinput = value ;},
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    defaultPinTheme: PinTheme(
                      height: 62.0,
                      width: 64.0,
                      textStyle: GoogleFonts.poppins(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: ColorsUtil.backgroundColorPin,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.transparent,
                          width: 0.5,
                        ),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      height: 62.0,
                      width: 64.0,
                      textStyle: GoogleFonts.poppins(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: ColorsUtil.backgroundColorPin,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.transparent,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 16.0,
              ),

              /// Continue Button
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: 370,
                  height: 48,
                  child: GradientElevatedButton(
                    onPressed: () async {
                      SharedPreferences sp = await SharedPreferences.getInstance();
                      sp.setString('pinput', pinput.toString());
                      sp.setString('UserType', 'agent');
                      sp.setBool('isLogin', true);
                      if(pinput.isNotEmpty){
                       getPage();
                      }



                    },
                    style: GradientElevatedButton.styleFrom(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(16, 140, 61, 1),
                          Color.fromRGBO(4, 38, 17, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                      ),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(10),
                    ),
                    child: Text(strings.string3,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: ColorsUtil.textColor1)),
                  ),
                ),
              ),

              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
  void getPage(){
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(
            builder: (context) => const MainMenuPage()),(Route<dynamic> route) => false);
  }
}
