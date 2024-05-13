import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/accueil/call_page.dart';
import 'package:franga_agent/screens/gestion%20des%20sous%20agents/create_agent_page.dart';
import 'package:franga_agent/screens/saisieCode/reinit_code_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorsUtil.textColor1,
      appBar: AppBar(
        backgroundColor: ColorsUtil.textColor1,
        leading: Padding(
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
                        const BorderRadius.all(Radius.circular(30))),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ],
              )),
        ),
        centerTitle: true,
        title: Text(strings.string32, style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: ColorsUtil.black),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15,top: 40,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateAgentPage()));
              },
              child: Container(
                height: 36,
                width: 396,
                padding: const EdgeInsets.only(left: 5,top: 5),
                decoration: BoxDecoration(
                    color:ColorsUtil.backgroundTextContainer,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    Image.asset("assets/admin.png"),
                    const Gap(20),
                    Text(strings.string33,style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: ColorsUtil.text)),
                  ],
                ),
              ),
            ),
            const Gap(20),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CallPage()));
              },
              child: Container(
                height: 36,
                width: 396,
                padding: const EdgeInsets.only(left: 5,top: 5),
                decoration: BoxDecoration(
                    color:ColorsUtil.backgroundTextContainer,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    Image.asset("assets/Phone.png"),
                    const Gap(20),
                    Text(strings.string34,style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: ColorsUtil.text)),
                  ],
                ),
              ),
            ),
            const Gap(20),
            InkWell(
              onTap: (){},
              child: Container(
                height: 36,
                width: 396,
                padding: const EdgeInsets.only(left: 5,top: 5),
                decoration: BoxDecoration(
                    color:ColorsUtil.backgroundTextContainer,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    Image.asset("assets/WhatsApp.png"),
                    const Gap(20),
                    Text(strings.string33,style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: ColorsUtil.text)),
                  ],
                ),
              ),
            ),
            const Gap(20),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReinitCodePage()));
              },
              child: Container(
                height: 36,
                width: 396,
                padding: const EdgeInsets.only(left: 5,top: 5),
                decoration: BoxDecoration(
                    color:ColorsUtil.backgroundTextContainer,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  children: [
                    Image.asset("assets/Password1.png"),
                    const Gap(20),
                    Text(strings.string35,style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: ColorsUtil.text)),
                  ],
                ),
              ),
            ),
            const Gap(20),


          ],
        ),
      ),
    );;
  }
}
