import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

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
          "Our Services",
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
              title: "Flutter Development",
              subtitle: "Android & iOS Apps",
              icon: Icons.phone_android),
          CustomCard(
              title: "Web Development",
              subtitle: "Modern Responsive Websites",
              icon: Icons.web),
          CustomCard(
              title: "UI/UX Design",
              subtitle: "Figma & Adobe XD",
              icon: Icons.design_services),
          CustomCard(
              title: "Backend Development",
              subtitle: "NodeJS & Laravel",
              icon: Icons.storage),

          // ✅ New Card 1
          CustomCard(
              title: "Digital Marketing",
              subtitle: "SEO, Social Media & Ads",
              icon: Icons.mark_email_read),

          // ✅ New Card 2
          CustomCard(
              title: "Cloud Services",
              subtitle: "AWS, Firebase & Azure",
              icon: Icons.cloud),

          // ✅ New Card 3
          CustomCard(
              title: "E-commerce Solutions",
              subtitle: "Shopify & Custom Stores",
              icon: Icons.shopping_cart),

          // ✅ New Card 4
          CustomCard(
              title: "App Maintenance",
              subtitle: "Updates & Bug Fixes",
              icon: Icons.build),
        ],
      ),
    );
  }
}