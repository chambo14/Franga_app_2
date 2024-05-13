import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/retrait/confirmation_send_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

class IdentificationPage extends StatefulWidget {
  const IdentificationPage({super.key});

  @override
  State<IdentificationPage> createState() => _IdentificationPageState();
}

class _IdentificationPageState extends State<IdentificationPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorsUtil.textColor1,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15,top: 40,right: 15),
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
                const Gap(15),
                Text(strings.string24, style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorsUtil.black),)
              ],
            ),
            const Gap(40),
            Text("Nom du client",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5,top: 10),
              decoration: BoxDecoration(
                color:ColorsUtil.backgroundTextContainer,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text("AKA",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 24.09,
                  color: ColorsUtil.text)),
            ),
            const Gap(20),
            Text("Prenom du client",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5,top: 10),
              decoration: BoxDecoration(
                  color:ColorsUtil.backgroundTextContainer,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text("Arnaud",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 24.09,
                  color: ColorsUtil.text)),
            ),
            const Gap(20),
            Text("Numéro",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: ColorsUtil.text2)),
            const Gap(10),
            Container(
              height: 59,
              width: 394.56,
              padding: const EdgeInsets.only(left: 5,top: 10),
              decoration: BoxDecoration(
                  color:ColorsUtil.backgroundTextContainer,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text("07 07 65 17 32",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 24.09,
                  color: ColorsUtil.text)),
            ),
            const Gap(20),
            Center(child: Image.asset("assets/photo.png",height: 268,)),
            const Gap(20),
            SizedBox(
              width: 370,
              height: 48,
              child: GradientElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ConfirmationSendPage()));
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
                child: Text(strings.string3),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
