import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lojas_kawer/widgets/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentPage = 0;
  PageController _pageController = PageController();
  List<String> _images = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0XFF0E0F64),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {

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
      ),
      body: Column(
        children: [
          Container(
            height: 140,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _images.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  _images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categorias",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),  
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(0)
                      ),
                      onPressed: (){
                
                      },
                      child: Text(
                        "Ver mais",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Category(name: "Acessórios"),
                      Category(name: "Beleza"),
                      Category(name: "Eletrônicos"),
                      Category(name: "Domésticos"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}