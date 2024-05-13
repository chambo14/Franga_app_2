import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/domain/models/transaction_model.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/strings.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<Transaction> transaction = [
    const Transaction(
        typeTransaction: "Retrait",
        nameUser: "John",
        montant: "12000FC",
        date: "21/04/2024"),
   const Transaction(
        typeTransaction: "Depot",
        nameUser: "Andy",
        montant: "12000FC",
        date: "21/04/2024"),
   const Transaction(
        typeTransaction: "Retrait",
        nameUser: "Simon",
        montant: "12000FC",
        date: "21/04/2024"),
   const Transaction(
        typeTransaction: "Depot",
        nameUser: "John",
        montant: "12000FC",
        date: "21/04/2024"),
   const Transaction(
        typeTransaction: "Retrait",
        nameUser: "Olive",
        montant: "12000FC",
        date: "21/04/2024"),
   const Transaction(
        typeTransaction: "Retrait",
        nameUser: "John",
        montant: "12000FC",
        date: "21/04/2024"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white
              //image: DecorationImage(image: AssetImage("assets/accueil.png"), fit: BoxFit.cover)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 312,
                  decoration: const BoxDecoration(
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
                          right: 0,
                          top: 30,
                          child: Image.asset("assets/asterick2.png")),
                      Positioned(
                        top: 100,
                        right: 0,
                        child: Image.asset(
                          "assets/group7.png",
                          height: 205,

                        ),
                      ),
                      Positioned(
                          top: 110,
                          left: 10,
                          child: Column(
                            children: [
                              Text(
                                strings.string6,
                                style: GoogleFonts.poppins(
                                    fontSize: 36,
                                    color: ColorsUtil.textColor1,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                strings.string7,
                                style: GoogleFonts.poppins(
                                    fontSize: 36,
                                    color: ColorsUtil.textColor1,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )),

                    ],
                  ),
                ),

                const Gap(20),
                SizedBox(
                    height: 500,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      itemCount: transaction.length,
                      itemBuilder: (context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        transaction[index].date.toString(),
                                        overflow: TextOverflow.fade,
                                      ),
                                      const Gap(10),
                                      Text(transaction[index]
                                          .typeTransaction
                                          .toString())
                                    ],
                                  ),
                                ),
                                const Gap(20),
                                Expanded(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      Text(
                                        transaction[index].nameUser.toString(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: Colors.grey.shade500),
                                      ),
                                      const Gap(10),
                                      Text(
                                          transaction[index].montant.toString(),
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              color: Colors.grey.shade500)),
                                    ],
                                  ),
                                ),
                                const Gap(25),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.more_vert_outlined,
                                          size: 20,
                                        ),
                                      ),
                                      const Gap(8),
                                      const Text("12h30")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider()
                          ],
                        );
                      },
                    ))
              ],
            ),
          )),
    );
  }
}
