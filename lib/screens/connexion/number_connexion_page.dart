import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/domain/models/phone_model_response.dart';
import 'package:franga_agent/providers/number_phone_provider.dart';
import 'package:franga_agent/screens/connexion/send_code_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class NumberConnexionPage extends ConsumerStatefulWidget {
  const NumberConnexionPage({super.key});

  @override
  ConsumerState<NumberConnexionPage> createState() => _NumberConnexionPageState();
}

class _NumberConnexionPageState extends ConsumerState<NumberConnexionPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  late final PhoneModelResponse response;
  String initialCountry = 'COG';
  String? dropdownValue;
  void showSnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const  BoxDecoration(
          //image: DecorationImage(image: AssetImage("assets/accueil.png"))
          color: Colors.white
        ),
        child: SafeArea(
          child: ListView(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 20, right: 20),
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
                                      onChanged: (value){ controller.text = value;},
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
                  onTap: () async {
                    var number = dropdownValue! + controller.text.toString();
                    if(number.isNotEmpty && number.length == 14){
                      if (kDebugMode) {
                        print(number);
                      }
                      ref.read(userControllerProvider.notifier).login(mobile: number).then((value) => {value.fold((l) => {
                        showSnackbar(context, l),
                      }, (r) => {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SendCodePage(response: response)))
                      })});
                    }else {showSnackbar(context, "Veuillez mettre votre numéro svp");}
                  },
                  child: Container(
                    height: 48,
                    width: 370,
                    padding: const EdgeInsets.only(left: 40, top: 10),
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   SizedBox(height: MediaQuery.of(context).size.height/15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Image.asset("assets/group.png",height: 150,),
                    ],
                  ),
                ],
              )


            ],
          ),
          ),
        ),

    );
  }
}
