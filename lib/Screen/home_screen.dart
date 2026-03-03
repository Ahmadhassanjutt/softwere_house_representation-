import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          "FICER Institute",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/ficer.png"), // ✅ Correct
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const CustomCard(
              title: "Welcome to Our Software House",
              subtitle: "We build Apps, Websites & Designs",
              icon: Icons.business,
            ),

            const CustomCard(
              title: "Our Mission",
              subtitle: "Deliver High Quality Digital Solutions",
              icon: Icons.flag,
            ),

            // ✅ New Card 1
            const CustomCard(
              title: "Our Vision",
              subtitle: "Innovate and Inspire Digital Transformation",
              icon: Icons.visibility,
            ),

            // ✅ New Card 2
            const CustomCard(
              title: "Why Choose Us?",
              subtitle: "Expert Team & Professional Approach",
              icon: Icons.thumb_up,
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import '../../widgets/custom_card.dart';
// import '../../widgets/section_title.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         shape:  RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//      // bottomLeft: Radius.circular(30),
//         bottomRight: Radius.circular(100),
//     ),),
//         title: const Text(
//           "FICER Institute",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//           ),
//
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Banner
//           Container(
//
//           height: 200,
//           margin: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//
//             borderRadius: BorderRadius.circular(20),
//             image: DecorationImage(
//               image: AssetImage("assets/images/ficer.png"),   // ✅ Correct
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//
//             const SectionTitle(title: "Our Services"),
//
//             CustomCard(
//               title: "Mobile App Development",
//               subtitle: "Flutter, Android, iOS",
//               icon: Icons.phone_android,
//             ),
//
//             CustomCard(
//               title: "Web Development",
//               subtitle: "React, Laravel, NodeJS",
//               icon: Icons.web,
//             ),
//
//             CustomCard(
//               title: "UI/UX Design",
//               subtitle: "Modern & Clean Designs",
//               icon: Icons.design_services,
//             ),
//
//             const SectionTitle(title: "Featured Projects"),
//
//             CustomCard(
//               title: "E-Commerce App",
//               subtitle: "Full Stack Shopping Solution",
//               icon: Icons.shopping_cart,
//             ),
//
//             CustomCard(
//               title: "HR Management System",
//               subtitle: "Employee & Leave Management",
//               icon: Icons.people,
//             ),
//
//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }
// }
