import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {

  final bool isMenu;

  const Bar({
      super.key,
      required this.isMenu,
    });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0XFF0E0F64),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              isMenu ?
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: Color(0XFFCAAC81),
                  size: 40.0,
                ),
              )
              :
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/menu_page");
                },
                child: Icon(
                  Icons.menu,
                  color: Color(0XFFCAAC81),
                  size: 40.0,
                ),
              ),
              SizedBox(width: 10,),
              Image.asset(
                "assets/logodeitada.png",
                width: 120.0,
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {

                },
                child: Icon(
                  Icons.search_outlined,
                  color: Color(0XFFCAAC81),
                  size: 32.0,
                ),
              ),
              SizedBox(width: 8,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/profile_page");
                },
                child: Icon(
                  Icons.person_2_outlined,
                  color: Color(0XFFCAAC81),
                  size: 32.0,
                ),
              ),
              SizedBox(width: 8,),
              InkWell(
                onTap: () {

                },
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0XFFCAAC81),
                  size: 32.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}