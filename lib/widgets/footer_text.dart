import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {

  final String title;
  final bool isButtom;
  final Function()? onPressed;
  const FooterText({
      super.key,
      required this.title,
      required this.isButtom,
      this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2,),
        isButtom ?
        InkWell(
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              Icon(
                Icons.add,
                size: 24,
                color: Colors.white,
              ),
            ],
          ),
        ) :
        Text(
          title,
          style: TextStyle(
            color: Colors.white
          ),
        ),
        SizedBox(height: 2,),
      ],
    ); 
  }
}