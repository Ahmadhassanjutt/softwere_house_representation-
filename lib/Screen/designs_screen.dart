import 'package:flutter/material.dart';
import '../widgets/grid_item.dart';

class DesignsScreen extends StatelessWidget {
  const DesignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(100),
          ),),
        title: const Text(
          "Designer Products",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),

        ),
        //centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridItem(
            imageUrl: "https://picsum.photos/200?random=${index + 10}",
            title: "Design ${index + 1}",
          );
        },
      ),
    );
  }
}