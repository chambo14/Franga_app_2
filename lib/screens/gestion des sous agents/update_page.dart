import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/strings.dart';
import 'create_agent_page.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
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
                top: 60,
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
                  padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
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
                  child: ListView(
                   padding: const EdgeInsets.only(left: 5),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image:const DecorationImage(
                                    image: AssetImage("assets/blebrice.png")),
                                border: Border.all(color: ColorsUtil.kblack1),
                                borderRadius: const BorderRadius.all(Radius.circular(50))),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Text(
                        "Blé",
                        style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: ColorsUtil.kblack),
                      ),
                      const Gap(5),
                      Text(
                        "Brice",
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
                          const Gap(60),
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
                      const Gap(20),
                      const Divider(),
                      Text(strings.string56, style: GoogleFonts.poppins(fontSize:13, fontWeight:FontWeight.w400, color:ColorsUtil.black),),
                      const Gap(5),
                      Row(
                        children: [
                          Text(strings.string57, style: GoogleFonts.poppins(fontSize:12, fontWeight:FontWeight.w200, color:ColorsUtil.black),),
                          const Gap(5),
                          Text(strings.string58, style: GoogleFonts.poppins(fontSize:12, fontWeight:FontWeight.w200, color:ColorsUtil.text),),
                        ],
                      ),
                      Row(
                        children: [
                          Text(strings.string57, style: GoogleFonts.poppins(fontSize:12, fontWeight:FontWeight.w200, color:ColorsUtil.black),),
                          const Gap(5),
                          Text(strings.string58, style: GoogleFonts.poppins(fontSize:12, fontWeight:FontWeight.w200, color:ColorsUtil.text),),
                        ],
                      ),
                      const Gap(20),

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
                            border: Border.all(color: ColorsUtil.KcircleGreen,width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              strings.string55,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: ColorsUtil.KcircleGreen),
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
