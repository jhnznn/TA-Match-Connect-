import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  final String imagePath;
  final String name;

  const CastCard({
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            imagePath,
            width: 100,
            height: 50,
          ),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            color: Color(0xFF01004E),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
