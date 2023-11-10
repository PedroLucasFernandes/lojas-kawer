import 'package:flutter/material.dart';

class Benefits extends StatelessWidget {

  final Icon icon;
  final String title;
  final String description;
  const Benefits({
      super.key,
      required this.icon, 
      required this.title,
      required this.description, 
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        color: Color(0XFFE2EEF7),
        height: 111,
        child: Column(
          children: [
            icon,
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ), 
            )
          ],
        ),
      ),
    );
  }
}