import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/screens/transfert/validation_pin_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

import '../../core/utils/strings.dart';
import '../saisieCode/code_pin.page.dart';

class TransactionDetailCliPage extends StatefulWidget {
  const TransactionDetailCliPage({super.key});

  @override
  State<TransactionDetailCliPage> createState() => _TransactionDetailCliPageState();
}

class _TransactionDetailCliPageState extends State<TransactionDetailCliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.textColor1,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15, top: 40, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ],
                    )),
                const Gap(20),
                Text(
                  strings.string24,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: ColorsUtil.black),
                ),
              ],
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Montant du retrait",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: ColorsUtil.text2)),
                  const Gap(10),
                  Container(
                    height: 48,
                    width: 170,
                    padding: const EdgeInsets.only(left: 1, top: 5),
                    decoration: BoxDecoration(
                        color: ColorsUtil.backgroundTextContainer,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("12000",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 24.09,
                                color: ColorsUtil.text)),
                        const Gap(5),
                        Text("FC",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: ColorsUtil.text)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(50),
            Container(
              height: 35,
              width: 150,
              padding: const EdgeInsets.only(left: 30,top: 4),
              decoration: BoxDecoration(
                color: ColorsUtil.black,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text(strings.string43,
                  style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: ColorsUtil.textColor1)),
            ),
            const Gap(20),
            Text(strings.string47,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5, top: 15),
              decoration: BoxDecoration(
                  color: ColorsUtil.backgroundTextContainer2,
                  borderRadius: BorderRadius.circular(10)),
              child: Text("AKA",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: ColorsUtil.text)),
            ),
            const Gap(20),
            Text(strings.string46,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5, top: 15),
              decoration: BoxDecoration(
                  color: ColorsUtil.backgroundTextContainer2,
                  borderRadius: BorderRadius.circular(10)),
              child: Text("Arnaud",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: ColorsUtil.text)),
            ),
            const Gap(20),
            Text(strings.string45,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5, top: 15),
              decoration: BoxDecoration(
                  color: ColorsUtil.backgroundTextContainer2,
                  borderRadius: BorderRadius.circular(10)),
              child: Text("07 07 65 17 32",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: ColorsUtil.text)),
            ),
            const Gap(20),
            Container(
              height: 35,
              width: 150,
              padding: const EdgeInsets.only(left: 30,top: 4),
              decoration:  BoxDecoration(
                  color: ColorsUtil.KcircleGreen,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text(strings.string44,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: ColorsUtil.textColor1)),
            ),
            const Gap(20),
            Text(strings.string47,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5, top: 15),
              decoration: BoxDecoration(
                  color: ColorsUtil.backgroundTextContainer2,
                  borderRadius: BorderRadius.circular(10)),
              child: Text("NIME",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: ColorsUtil.text)),
            ),
            const Gap(20),
            Text(strings.string46,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5, top: 15),
              decoration: BoxDecoration(
                  color: ColorsUtil.backgroundTextContainer2,
                  borderRadius: BorderRadius.circular(10)),
              child: Text("Claude",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: ColorsUtil.text)),
            ),
            const Gap(20),
            Text(strings.string48,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5, top: 15),
              decoration: BoxDecoration(
                  color: ColorsUtil.backgroundTextContainer2,
                  borderRadius: BorderRadius.circular(10)),
              child: Text("07 01 01 32",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: ColorsUtil.text)),
            ),
            const Gap(50),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 370,
                height: 48,
                child: GradientElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ValidationPinPage()));
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
                  child: Text(strings.string19,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: ColorsUtil.textColor1)),
                ),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
