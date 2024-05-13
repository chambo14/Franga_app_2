import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/transfert/transaction%20_detail_cli_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:pinput/pinput.dart';

class TransfertCodePage extends StatefulWidget {
  const TransfertCodePage({super.key});

  @override
  State<TransfertCodePage> createState() => _TransfertCodePageState();
}

class _TransfertCodePageState extends State<TransfertCodePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15, top: 60),
                  height: 312,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Wave-circle.png")),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(16, 140, 61, 1),
                          Color.fromRGBO(0, 0, 0, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 180),
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
                                          color: Colors.white,
                                          border: Border.all(color: Colors.grey.shade300),
                                          borderRadius:
                                          const BorderRadius.all(Radius.circular(30))),
                                      child: const Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          const Gap(60),
                          Text(
                            strings.string40,
                            style: GoogleFonts.poppins(
                                fontSize: 36,
                                color: ColorsUtil.textColor1,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            strings.string41,
                            style: GoogleFonts.poppins(
                                fontSize: 36,
                                color: ColorsUtil.textColor1,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),

                      Flexible(
                        flex: 2,
                        child: Positioned(
                            left: 214,
                            top: 85.94,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/coins2.png",height: 210,),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Gap(50),
            Text(strings.string42, style: GoogleFonts.poppins(
                fontSize: 14,
                color: ColorsUtil.black,
                fontWeight: FontWeight.w400),),
            const Gap(50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: width,
                child: Pinput(
                  length: 6,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  defaultPinTheme: PinTheme(
                    height: 47.0,
                    width: 49.0,
                    textStyle: GoogleFonts.poppins(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: ColorsUtil.backgroundColorfield,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 0.5,
                      ),
                    ),
                  ),


                  focusedPinTheme: PinTheme(
                    height: 47.0,
                    width: 49.0,
                    textStyle: GoogleFonts.poppins(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: ColorsUtil.backgroundColorfield,
                      borderRadius:BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 0.5,
                      ),
                    ),
                  ),


                ),
              ),
            ),

            const Gap(80),

            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 370,
                height: 48,
                child: GradientElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const TransactionDetailCliPage()));
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
                    padding:
                    const EdgeInsets.all(10),
                  ),
                  child: Text(strings.string19,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: ColorsUtil.textColor1,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
