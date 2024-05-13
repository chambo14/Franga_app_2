import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:franga_agent/screens/historiqueTransaction/history_page.dart';
import 'package:franga_agent/screens/accueil/home_page.dart';
import 'package:franga_agent/screens/solde/solde_page.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  var currentIndex = 0;

  final pages = [const HomePage(), const SoldePage(), const HistoryPage()];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*Center(
        child: pages[currentIndex],
      ),*/
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Stack(
        children: [
          pages.elementAt(currentIndex),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  child: BottomNavigationBar(
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon:FaIcon(
                          FontAwesomeIcons.house,
                          size: 20,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: FaIcon(
                          FontAwesomeIcons.sackDollar,
                          size: 20,
                        ),
                        label: 'Solde',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.menu_outlined),
                        label: 'Historique',
                      ),
                    ],
                    currentIndex: currentIndex,
                    selectedItemColor: ColorsUtil.KcircleGreen,
                    backgroundColor: Colors.grey.shade100,
                    onTap: _onItemTapped,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 20 : 0,
      decoration: const BoxDecoration(
        color: Color(0xFF81B4FF),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
