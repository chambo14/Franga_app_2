import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/retrait/indentification_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

class RetraitPage extends StatefulWidget {
  const RetraitPage({super.key});

  @override
  State<RetraitPage> createState() => _RetraitPageState();
}

class _RetraitPageState extends State<RetraitPage> {
  TextEditingController phoneController = TextEditingController();
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 312,
              width: double.infinity,
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
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Padding(
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
                    ),),
                  Positioned(
                    top: 120,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          strings.string8,
                          style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: ColorsUtil.textColor1,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          strings.string21,
                          style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: ColorsUtil.textColor1,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: -40,
                      height: 330,

                      child:  Image.asset("assets/cash3.png"))
                ],
              ),
            ),
            const Gap(40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  strings.string9,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorsUtil.kblack),
                ),
                const Gap(10),
                Container(
                  height: 47,
                  width: 345,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorsUtil.backgroundColorfield),
                  child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: ColorsUtil.backgroundColorfield,
                        filled: true,
                        hintText: "",
                        counterText: "",
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.grey.shade700,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      )),
                )
              ],
            ),
            const Gap(40),
            SizedBox(
              width: 480,
              child: Padding(
                padding: const EdgeInsets.only(left: 60, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      strings.string10,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: ColorsUtil.kblack,
                          fontWeight: FontWeight.w400),
                    ),
                    const Gap(10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 35,


                        decoration: BoxDecoration(
                            color: ColorsUtil.backgroundContainer,
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: DropdownButtonFormField<String>(
                            alignment: Alignment.center,
                            hint: Text(
                              'Devise',
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
                            items: <String>['FC', "§"]
                                .map<DropdownMenuItem<String>>((String value) {
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
                                contentPadding: EdgeInsets.only(top: -5,  right: 2,left: 2),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("0",
                    style: GoogleFonts.poppins(
                        fontSize: 50,
                        color: ColorsUtil.kblack,
                        fontWeight: FontWeight.w600)),
                Text("FC",
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        color: ColorsUtil.kblack,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [

                  Row(
                    children: [
                      Text(
                        strings.string12,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: ColorsUtil.kblack,
                            fontWeight: FontWeight.w400),
                      ),
                      const Gap(5),
                      Text(
                        "Lorem ipsum",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: ColorsUtil.kblack,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        strings.string13,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: ColorsUtil.kblack,
                            fontWeight: FontWeight.w400),
                      ),
                      const Gap(5),
                      Text(
                        "Lorem ipsum",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: ColorsUtil.KcircleGreen,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 370,
                child: GradientElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const IdentificationPage()));
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
