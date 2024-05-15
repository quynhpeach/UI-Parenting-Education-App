import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class AddChildPage extends StatelessWidget {
  const AddChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap functionality here
        print('Box tapped!');
      },
      child: Container(
        width: double.infinity, // Full width
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [
                Color.fromARGB(255, 203, 230, 207),
                Color.fromARGB(255, 173, 247, 211),
                Color.fromARGB(255, 220, 240, 215),
                Colors.white
              ], // Gradient colors for the border
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                borderRadius:
                    BorderRadius.circular(10), // Optional: rounded corners
                border: Border.all(
                  color:
                      Colors.transparent, // Necessary for the gradient border
                  width: 0.7, // Border width
                ),
              ),
              padding: const EdgeInsets.all(10), // Optional: add some padding
              child: const Row(
                children: [
                  Text('Thêm con',
                      style: TextStyle(
                          color: Color(0xFF77B05A),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Icon(
                    EvaIcons.plusCircleOutline,
                    color: Color(0xFF77B05A),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
