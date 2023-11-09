import 'package:flutter/material.dart';

class MenuText extends StatelessWidget {

  final String title;
  final Function()? onPressed;
  final Icon? icon;
  const MenuText({
      super.key,
      required this.title,
      this.onPressed,
      this.icon,
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon != null ? Row(
          children: [
            InkWell(onTap: onPressed, child: icon!),
            SizedBox(width: 8,)
          ],
        )
        : SizedBox(),
        onPressed != null ?
        InkWell(
          onTap: onPressed,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        )
        :
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}