import 'package:flutter/material.dart';

class Similar extends StatelessWidget {
  final String PosterPath;
  final String name;

  const Similar({
    required this.PosterPath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            PosterPath,
            width: 100,
            height: 150,
          ),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            color: Color(0xFF01004E),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
