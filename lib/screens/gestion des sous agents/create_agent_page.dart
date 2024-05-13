import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/core/utils/strings.dart';
import 'package:franga_agent/screens/gestion%20des%20sous%20agents/info_agent_page.dart';
import 'package:franga_agent/screens/gestion%20des%20sous%20agents/update_page.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';



class CreateAgentPage extends StatefulWidget {
  const CreateAgentPage({super.key});

  @override
  State<CreateAgentPage> createState() => _CreateAgentPageState();
}

class _CreateAgentPageState extends State<CreateAgentPage> {


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
                        image: AssetImage("assets/digitalbusiness.png"))),
                padding: const EdgeInsets.only(left: 307),
                child: Positioned(
                    top: 0,
                    right: -50,
                    child: Image.asset("assets/asterick2.png")),
              ),
            ),
            Positioned(
              left: 20,
              top: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gérer les ",
                    style: GoogleFonts.poppins(
                        color: ColorsUtil.KcircleGreen,
                        fontSize: 33,
                        fontWeight: FontWeight.w600),
                  ),
                  Text("sous-agents",
                      style: GoogleFonts.poppins(
                          color: ColorsUtil.KcircleGreen,
                          fontSize: 33,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Positioned(
              top: 255,
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
                  children: [
                    SizedBox(
                      height: 350,
                      child: ListView(
                        children: [
                          Container(
                            height: 54,
                            width: 354,
                            decoration: BoxDecoration(
                              color: ColorsUtil.backgroundRectangle,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              title: Text("Sous-agent Brice", style: GoogleFonts.poppins(fontSize:15, fontWeight:FontWeight.w400, color:ColorsUtil.black)),
                              trailing: PopupMenuButton<int>(
                                iconColor: ColorsUtil.KcircleGreen,
                                itemBuilder: (context) => [
                                  // popupmenu item 1
                                   PopupMenuItem(
                                    value: 1,
                                    // row has two child icon and text.
                                    child: GestureDetector(
                                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const UpdatePage()));},
                                      child: Row(
                                        children: [
                                          const Icon(Icons.edit,color: ColorsUtil.KcircleGreen,
                                            size: 15,),
                                        const SizedBox(
                                            // sized box with width 10
                                            width: 10,
                                          ),
                                          Text(strings.string50, style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: ColorsUtil.black),)
                                        ],
                                      ),
                                    ),
                                  ),
                                  // popupmenu item 2
                                  PopupMenuItem(
                                    value: 2,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.delete_rounded,
                                          color: ColorsUtil.KcircleGreen,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          // sized box with width 10
                                          width: 10,
                                        ),
                                        Text(
                                          strings.string49,
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: ColorsUtil.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                                offset: const Offset(0, 40),
                                color: Colors.white,
                                elevation: 2,
                              ),
                            ),
                          ),
                          const Gap(10),
                          Container(
                            height: 54,
                            width: 354,
                            decoration: BoxDecoration(
                              color: ColorsUtil.backgroundRectangle,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              title: Text("Sous-agent Sonia", style: GoogleFonts.poppins(fontSize:15, fontWeight:FontWeight.w400, color:ColorsUtil.black)),
                              trailing: PopupMenuButton<int>(
                                iconColor: ColorsUtil.KcircleGreen,
                                itemBuilder: (context) => [
                                  // popupmenu item 1
                                   PopupMenuItem(
                                    value: 1,
                                    // row has two child icon and text.
                                    child: GestureDetector(
                                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const UpdatePage()));},
                                      child: Row(
                                        children: [
                                          const Icon(Icons.edit,color: ColorsUtil.KcircleGreen,
                                            size: 15,),
                                        const SizedBox(
                                            // sized box with width 10
                                            width: 10,
                                          ),
                                          Text(strings.string50, style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: ColorsUtil.black),)
                                        ],
                                      ),
                                    ),
                                  ),
                                  // popupmenu item 2
                                  PopupMenuItem(
                                    value: 2,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.delete_rounded,
                                          color: ColorsUtil.KcircleGreen,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          // sized box with width 10
                                          width: 10,
                                        ),
                                        Text(
                                          strings.string49,
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: ColorsUtil.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                                offset: const Offset(0, 40),
                                color: Colors.white,
                                elevation: 2,
                              ),
                            ),
                          ),
                          const Gap(10),
                          Container(
                            height: 54,
                            width: 354,
                            decoration: BoxDecoration(
                              color: ColorsUtil.backgroundRectangle,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              title: Text("Sous-agent Armel", style: GoogleFonts.poppins(fontSize:15, fontWeight:FontWeight.w400, color:ColorsUtil.black),),
                              trailing: PopupMenuButton<int>(
                                iconColor: ColorsUtil.KcircleGreen,
                                itemBuilder: (context) => [
                                  // popupmenu item 1
                                   PopupMenuItem(
                                    value: 1,
                                    // row has two child icon and text.
                                    child: GestureDetector(
                                      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const UpdatePage()));},
                                      child: Row(
                                        children: [
                                          const Icon(Icons.edit,color: ColorsUtil.KcircleGreen,
                                            size: 15,),
                                        const SizedBox(
                                            // sized box with width 10
                                            width: 10,
                                          ),
                                          Text(strings.string50, style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: ColorsUtil.black),)
                                        ],
                                      ),
                                    ),
                                  ),
                                  // popupmenu item 2
                                  PopupMenuItem(
                                    value: 2,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.delete_rounded,
                                          color: ColorsUtil.KcircleGreen,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          // sized box with width 10
                                          width: 10,
                                        ),
                                        Text(
                                          strings.string49,
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: ColorsUtil.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                                offset: const Offset(0, 40),
                                color: Colors.white,
                                elevation: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const InfoAgentPage()));
                      },
                      child: Column(
                        children: [
                         Image.asset("assets/button.png"),
                          const Gap(3),
                          Text(strings.string51, style:GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: ColorsUtil.black),)
                        ],
                      ),
                    )
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
