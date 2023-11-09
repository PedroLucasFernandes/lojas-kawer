import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final String name;
  final String image;
  const Category({
      super.key,
      required this.image, 
      required this.name, 
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {

              },
              child: Container(
                width: 102,
                height: 102,
                child: ClipOval(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
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