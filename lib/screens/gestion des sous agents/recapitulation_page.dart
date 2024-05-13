import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/gestion%20des%20sous%20agents/create_agent_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

class RecapitulationPage extends StatefulWidget {
  const RecapitulationPage({super.key});

  @override
  State<RecapitulationPage> createState() => _RecapitulationPageState();
}

class _RecapitulationPageState extends State<RecapitulationPage> {
  bool switchValue = false;
  TextEditingController controller = TextEditingController();

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
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Positioned(
            right: -55,
            top: 10,
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
            top: 150,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/pic.png")),
                        border: Border.all(color: ColorsUtil.kblack1),
                        borderRadius: const BorderRadius.all(Radius.circular(50))),
                  ),
                  const Gap(20),
                  Text(
                    "Tra",
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: ColorsUtil.kblack),
                  ),
                  const Gap(5),
                  Text(
                    "Hélène",
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: ColorsUtil.kblack),
                  ),
                  const Gap(5),
                  Text(
                    "07 07 07 07 07",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: ColorsUtil.text),
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Autoriser le sous-agent à faire",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: ColorsUtil.text)),
                          Text("des transactions",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: ColorsUtil.text))
                        ],
                      ),
                      const Spacer(),
                      CupertinoSwitch(
                        value: switchValue, // Current state of the switch
                        onChanged: (value) {
                          setState(() {
                            switchValue = value; // Update the switch state
                          });
                        },
                      ),
                    ],
                  ),
                  const Gap(20),
                  Text(
                    "Définir le montant de la limitation",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: ColorsUtil.kblack),
                  ),
                  Text(
                    "Vous avez la possibilité de limiter",
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                        color: ColorsUtil.kblack),
                  ),
                  Text(
                    "les soldes des sous-agents",
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                        color: ColorsUtil.kblack),
                  ),
                  const Gap(20),
                  Container(
                    padding: const EdgeInsets.all(2),
                    child: TextField(
                      enabled: true,
                      controller: controller,
                      textCapitalization: TextCapitalization.none,
                      maxLength: 10,
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "150000 FC",
                        counterText: "",
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.grey.shade700,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade900),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade900),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade900),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  const Gap(30),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAgentPage()));
                    },
                    child: Container(
                      height: 48,
                      width: 370,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(16, 140, 61, 1),
                              Color.fromRGBO(4, 38, 17, 1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          strings.string55,
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: ColorsUtil.textColor1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
