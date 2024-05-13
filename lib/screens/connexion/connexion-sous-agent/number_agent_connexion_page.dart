import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/connexion/connexion-sous-agent/send_code_agent_page.dart';
import 'package:franga_agent/screens/connexion/send_code_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberAgentConnexionPage extends StatefulWidget {
  const NumberAgentConnexionPage({super.key});

  @override
  State<NumberAgentConnexionPage> createState() => _NumberAgentConnexionPageState();
}

class _NumberAgentConnexionPageState extends State<NumberAgentConnexionPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  String initialCountry = 'COG';
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const  BoxDecoration(
            color: Colors.white
            //image: DecorationImage(image: AssetImage("assets/accueil.png"))
        ),
        child: SafeArea(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28, left: 20, right: 20),
                      child: Column(
                        children: [
                          Image.asset("assets/sticker1.png"),
                          const Gap(20),
                          Text(
                            "Bienvenue,",
                            style: GoogleFonts.andadaPro(
                                fontSize: 34,
                                fontWeight: FontWeight.w700,
                                color: ColorsUtil.KcircleGreen),
                          ),
                          Text(
                            "Connectez-vous avec Franga",
                            style: GoogleFonts.andadaPro(
                                color: ColorsUtil.textColor, fontSize: 22),
                          ),
                          Image.asset("assets/Main.png"),
                          const Gap(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border:
                                      Border.all(color: Colors.grey.shade900),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  child: DropdownButtonFormField<String>(
                                    hint: Text(
                                      'Select',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    value: dropdownValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      '+242',
                                      '+225'
                                    ].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.grey.shade700,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      );
                                    }).toList(),
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                            left: 8,
                                            top: 16,
                                            right: 15,
                                            bottom: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              const Gap(5),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.all(2),
                                    child: TextField(
                                      enabled: true,
                                      controller: controller,
                                      textCapitalization: TextCapitalization.none,
                                      maxLength: 10,
                                      maxLines: 1,
                                      keyboardType: TextInputType.phone,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontSize: 16,
                                      ),
                                      decoration: InputDecoration(
                                        isDense: true,
                                        fillColor: Colors.transparent,
                                        filled: true,
                                        hintText: "874569321",
                                        counterText: "",
                                        hintStyle: GoogleFonts.poppins(
                                            color: Colors.grey.shade700,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade900),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade900),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade900),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const SendCodeAgentPage()));
                  },
                  child: Container(
                    height: 48,
                    width: 370,
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    decoration:  BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(16, 140, 61, 1),
                            Color.fromRGBO(4, 38, 17, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Text(
                      strings.string37,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorsUtil.textColor1),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Image.asset("assets/group.png",height: 150,),
                ],
              )


            ],
          ),
        ),
      ),

    );
  }
}
