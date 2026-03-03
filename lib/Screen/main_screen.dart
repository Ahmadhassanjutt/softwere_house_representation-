import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'portfolio_screen.dart';
import 'designs_screen.dart';
import 'service_screen.dart';
import 'team_screen.dart';
import 'contact_screen.dart';
import 'about_screen.dart';


class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final ValueNotifier<int> currentIndex = ValueNotifier(0);

  final List<Map<String, dynamic>> navItems = [
    {"icon": Icons.home, "label": "Home"},
    {"icon": Icons.work, "label": "Services"},
    {"icon": Icons.folder, "label": "Portfolio"},
    {"icon": Icons.design_services, "label": "Designs"},
    {"icon": Icons.group, "label": "Team"},
    {"icon": Icons.phone, "label": "Contact"},
    {"icon": Icons.info, "label": "About"},
  ];

  final List<Widget> screens = const [
    HomeScreen(),
    ServicesScreen(),
    PortfolioScreen(),
    DesignsScreen(),
    TeamScreen(),
    ContactScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ Gradient curved background for body top
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ValueListenableBuilder<int>(
              valueListenable: currentIndex,
              builder: (context, value, _) {
                return screens[value];
              },
            ),
          ),
        ],
      ),

      // ✅ Modern scrollable bottom nav
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ValueListenableBuilder<int>(
            valueListenable: currentIndex,
            builder: (context, value, _) {
              return Row(
                children: List.generate(navItems.length, (index) {
                  bool isSelected = value == index;
                  return GestureDetector(
                    onTap: () {
                      currentIndex.value = index;
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.indigo.shade100 : Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            navItems[index]["icon"],
                            size: isSelected ? 38 : 28,
                            color: isSelected ? Colors.indigo : Colors.grey,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            navItems[index]["label"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: isSelected ? 14 : 12,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              color: isSelected ? Colors.indigo : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}