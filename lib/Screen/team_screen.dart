import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(100),
          ),
        ),
        title: const Text(
          "Our Team",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        children: const [
          CustomCard(
              title: "Ahmad Hassan",
              subtitle: "Flutter Developer",
              icon: Icons.person),
          CustomCard(
              title: "Ali Khan",
              subtitle: "UI/UX Designer",
              icon: Icons.person),
          CustomCard(
              title: "Sara Ahmed",
              subtitle: "Backend Developer",
              icon: Icons.person),

          // ✅ New Card 1
          CustomCard(
              title: "Usman Ali",
              subtitle: "Project Manager",
              icon: Icons.person),

          // ✅ New Card 2
          CustomCard(
              title: "Hina Saleem",
              subtitle: "Frontend Developer",
              icon: Icons.person),

          // ✅ New Card 3
          CustomCard(
              title: "Zoya Khan",
              subtitle: "QA Engineer",
              icon: Icons.person),
        ],
      ),
    );
  }
}