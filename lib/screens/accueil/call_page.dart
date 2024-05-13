import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  late final String numberCtrl = "";
  @override
  void initState() {
    super.initState();
    //numberCtrl.text.toString() = "085921191121";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("2626", style: GoogleFonts.poppins(fontSize:64, fontWeight:FontWeight.w600, color:ColorsUtil.kblack),),
          const Gap(400),
            InkWell(
              onTap: () async {
                FlutterPhoneDirectCaller.callNumber("2626");
              },
              child: Image.asset("assets/phone2.png"),
            )
          ],
        ),
      ),
    );
  }
}
