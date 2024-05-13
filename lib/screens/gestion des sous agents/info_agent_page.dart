import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:franga_agent/screens/gestion%20des%20sous%20agents/piece_camera_page.dart';
import 'package:franga_agent/screens/gestion%20des%20sous%20agents/recapitulation_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/utils/colors_util.dart';
import '../../core/utils/strings.dart';
import 'camera_page.dart';

class InfoAgentPage extends StatefulWidget {
  const InfoAgentPage({super.key,  this.picture, this.image});
  final XFile? picture;
  final XFile? image;

  @override
  State<InfoAgentPage> createState() => _InfoAgentPageState();
}

class _InfoAgentPageState extends State<InfoAgentPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String? dropdownValue;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                        const Gap(20),
                        Text(strings.string52, style: GoogleFonts.poppins(fontSize:16, fontWeight:FontWeight.w600, color:ColorsUtil.black),)
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
              top: 180,
              right: 0,
              left: 0,
              child: Container(
                height: 725,
                width: 428,
                padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
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
                  children: [
                    SizedBox(
                      height: 550,
                      child: ListView(
                        children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(strings.string47),
                                Text("*",style: GoogleFonts.poppins(fontSize:15, color:Colors.red),)
                              ],
                            ),
                            Container(
                              height: 44,
                              width: 386,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorsUtil.kblack1),
                              child: TextField(
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
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
                          const Gap(15),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(strings.string46),
                                Text("*",style: GoogleFonts.poppins(fontSize:15, color:Colors.red),)
                              ],
                            ),
                            Container(
                              height: 44,
                              width: 386,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorsUtil.backgroundColorfield),
                              child: TextField(
                                  controller: lastnameController,
                                  keyboardType: TextInputType.text,
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
                        const Gap(15),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(strings.string53),
                                Text("*",style: GoogleFonts.poppins(fontSize:15, color:Colors.red),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    width: 30,
                                    height: 40,
                                   
                                    decoration: const BoxDecoration(
                                        color: ColorsUtil.backgroundColorfield,
                                        borderRadius:  BorderRadius.all(
                                            Radius.circular(9))),
                                    child: DropdownButtonFormField<String>(

                                      hint: Text(
                                        '+223',
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
                                        decoration: InputDecoration(
                                          contentPadding:const EdgeInsets.only(top: 12,  right: 20,left: 10),
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
                                        )
                                    ),
                                  ),
                                ),
                                const Gap(5),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      height: 44,
                                      padding: const EdgeInsets.all(2),
                                      child: TextField(
                                        enabled: true,
                                        controller: phoneController,
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
                                        ),
                                      ),
                                    )),
                              ],
                            ),

                          ],
                        ),
                          const Gap(50),
                          Container(
                            height: 150,
                            width: 450,
                            decoration: BoxDecoration(
                                color:ColorsUtil.backgroundColorfield,
                                borderRadius: BorderRadius.circular(9)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap:() async {
                                    await availableCameras().then((value) => Navigator.push(context,
                                        MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
                                  },
                                  child: Container(
                                    height:80,
                                    width: 80,
                                    decoration:const  BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(40))
                                    ),
                                    child:widget.picture  == null ? Image.asset("assets/Camera.png"): Image.file(File(widget.picture!.path), fit: BoxFit.cover, width: 250),
                                  ),
                                ),
                                const Gap(30),
                                InkWell(
                                  onTap:() async{
                                    await availableCameras().then((value) => Navigator.push(context,
                                        MaterialPageRoute(builder: (_) => PieceCameraPage(camera: value))));
                                  },
                                  child: Container(
                                    height:80,
                                    width: 80,
                                    decoration:const  BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(40))
                                    ),
                                    child: widget.image  == null ? Image.asset("assets/Picture.png") : Image.file(File(widget.image!.path), fit: BoxFit.cover, width: 145, height: 90,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(30),
                          SizedBox(
                            width: 370,
                            height: 48,
                            child: GradientElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const RecapitulationPage()));
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
                              child: Text(strings.string54,
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: ColorsUtil.textColor1)),
                            ),
                          )
                        ],
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
      ),
    );
  }

}
