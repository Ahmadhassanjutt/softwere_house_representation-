import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(100),
          ),
        ),
        title: const Text(
          "Contact Us",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CustomCard(
            title: "Phone",
            subtitle: "+92 300 0000000",
            icon: Icons.phone,
          ),
          const CustomCard(
            title: "Email",
            subtitle: "info@softtech.com",
            icon: Icons.email,
          ),
          const CustomCard(
            title: "Address",
            subtitle: "Lahore, Pakistan",
            icon: Icons.location_on,
          ),

          const SizedBox(height: 25),

         // 🔥 Map Image Section
          Container(
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "assets/images/ficer.png",
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}