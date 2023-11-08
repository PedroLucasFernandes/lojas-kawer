import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final String name;
  final Image? image;
  const Category({
      super.key,
      this.image, 
      required this.name, 
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 109,
              height: 102,
              child: ClipOval(
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 12,),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(width: 24,),
      ],
    );
  }
}