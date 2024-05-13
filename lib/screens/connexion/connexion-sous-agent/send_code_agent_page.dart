import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:franga_agent/screens/connexion/connexion-sous-agent/code_pin_agent_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/colors_util.dart';
import '../../../core/utils/strings.dart';

class SendCodeAgentPage extends StatefulWidget {
  const SendCodeAgentPage({super.key});

  @override
  State<SendCodeAgentPage> createState() => _SendCodeAgentPageState();
}

class _SendCodeAgentPageState extends State<SendCodeAgentPage> {
  String text = "";

  onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsUtil.backgroundColorPin,

        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10, right: 10,top: 40),
          child:  Form(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: (){Navigator.pop(context);},
                        child: Row(
                          children: [
                            Container(
                              height: 33,
                              width: 33,
                              padding: const EdgeInsets.only(left: 5),
                              decoration:BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(color: Colors.grey.shade300),
                                  borderRadius: const BorderRadius.all(Radius.circular(30))
                              ),
                              child: const Icon(Icons.arrow_back_ios, color: Colors.white,size:15),
                            ),
                          ],
                        )
                    ),
                    const Gap(5),
                    Text(strings.string38, style: GoogleFonts.poppins(fontWeight:FontWeight.w600, fontSize:18, color:ColorsUtil.black),)
                  ],
                ),
                const Gap(25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Entrez le code de vérification",style: GoogleFonts.poppins(fontWeight:FontWeight.w600, fontSize:22, color:ColorsUtil.black)),
                    Text("envoyé sur votre numéro",style: GoogleFonts.poppins(fontWeight:FontWeight.w600, fontSize:22, color:ColorsUtil.black)),
                    Row(
                      children: [
                        Text("téléphone :", style: GoogleFonts.poppins(fontWeight:FontWeight.w600, fontSize:22, color:ColorsUtil.black)),
                        Text(" 7325374901" ,style: GoogleFonts.poppins(fontWeight:FontWeight.w600, fontSize:22, color:ColorsUtil.KcircleGreen)),
                      ],
                    ),
                  ],
                ),
                const Gap(20),
                OtpTextField(
                  numberOfFields: 6,
                  fieldHeight: 45,
                  fieldWidth: 45,
                  borderColor: ColorsUtil.black,
                  borderWidth: 2,
                  focusedBorderColor:ColorsUtil.black ,
                  enabledBorderColor: ColorsUtil.black,
                  borderRadius: BorderRadius.circular(9),
                  showFieldAsBox: true,

                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },

                  onSubmit: (String verificationCode){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: const Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        }
                    );
                  }, // end onSubmit
                ),
                const Gap(10),
                TextButton(onPressed: (){}, child: Text(strings.string39, style: GoogleFonts.poppins(fontSize:16, color:ColorsUtil.KcircleGreen, fontWeight:FontWeight.w600),)),
                const Gap(20),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const CodePinAgentPage()));
                  },
                  child: Container(
                    height: 61,
                    width: 229,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.transparent)

                    ),
                  ),
                ),


              ],
            ),
          ),
        )
    );
  }
}
