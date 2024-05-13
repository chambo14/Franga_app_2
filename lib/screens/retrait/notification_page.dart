import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 290,
              width: double.infinity,
              decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(16, 140, 61, 1),
                    Color.fromRGBO(4, 38, 17, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight:Radius.circular(40) )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 1, top: 5),
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
                                decoration: const BoxDecoration(
                                    color: Colors.white,

                                    borderRadius:  BorderRadius.all(
                                        Radius.circular(33))),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: ColorsUtil.Kgreen,
                                  size: 17,
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/20,),
                    Row(
                      children: [
                        Text("Notifications", style: GoogleFonts.poppins(fontSize:25.53, color:ColorsUtil.textColor1, fontWeight:FontWeight.w700,),),
                      const Spacer(),
                      Image.asset("assets/bell2.png",height: 140,)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView(
                padding: const EdgeInsets.only(left: 10, right: 10,top: 45),
                children: [
                  Text("Aujourd'hui", style: GoogleFonts.poppins(fontWeight:FontWeight.w600, fontSize:17),),
                  const Gap(15),
                  Container(
                    width: 392.74,
                    height: 43.37,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorsUtil.backgroundRectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text("id de transaction : ",style: GoogleFonts.poppins() ),
                        Text("2558",style: GoogleFonts.poppins(fontWeight:FontWeight.w600) ),
                        const Gap(70),
                        Text("à l'instant",style: GoogleFonts.poppins() )
                      ],
                    ),
                  ),
                  const Gap(5),
                  Container(
                    width: 392.74,
                    height: 43.37,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorsUtil.backgroundRectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text("id de transaction : ",style: GoogleFonts.poppins() ),
                        Text("2558",style: GoogleFonts.poppins(fontWeight:FontWeight.w600) ),
                        const Gap(70),
                        Text("à l'instant",style: GoogleFonts.poppins() )
                      ],
                    ),
                  ),
                  const Gap(5),
                  Container(
                    width: 392.74,
                    height: 43.37,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorsUtil.backgroundRectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text("id de transaction : ",style: GoogleFonts.poppins() ),
                        Text("2558",style: GoogleFonts.poppins(fontWeight:FontWeight.w600) ),
                        const Gap(70),
                        Text("à l'instant",style: GoogleFonts.poppins() )
                      ],
                    ),
                  ),
                  const Gap(25),
                  Text("Hier", style: GoogleFonts.poppins(fontWeight:FontWeight.w600, fontSize:17),),
                  const Gap(15),
                  Container(
                    width: 392.74,
                    height: 43.37,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorsUtil.backgroundRectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text("une mise à jour est disponble: ",style: GoogleFonts.poppins() ),
                        const Gap(60),
                        Text("11h30",style: GoogleFonts.poppins() )
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
