import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lojas_kawer/widgets/category.dart';
import 'package:lojas_kawer/widgets/footer_text.dart';
import 'package:lojas_kawer/widgets/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentPagetop = 0;
  PageController _pageControllertop = PageController();
  List<String> _imagestop = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
  ];

  int _currentPagebottom = 0;
  PageController _pageControllerbottom = PageController();
  List<String> _imagesbottom = [
    'assets/image4.png',
    'assets/image5.png',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPagetop < _imagestop.length - 1) {
        _currentPagetop++;
      } else {
        _currentPagetop = 0;
      }
      _pageControllertop.animateToPage(_currentPagetop, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPagebottom < _imagesbottom.length - 1) {
        _currentPagebottom++;
      } else {
        _currentPagebottom = 0;
      }
      _pageControllerbottom.animateToPage(_currentPagebottom, duration: Duration(milliseconds: 500), curve: Curves.ease);
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
      backgroundColor: Color(0XFFE2EEF7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              child: PageView.builder(
                controller: _pageControllertop,
                itemCount: _imagestop.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPagetop = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Image.asset(
                    _imagestop[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
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
                          backgroundColor: MaterialStatePropertyAll(Color(0XFFE2EEF7)),
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
                        Category(name: "Acessórios", image: "assets/acessorios.png",),
                        Category(name: "Beleza", image: "assets/beleza.png"),
                        Category(name: "Casa & Decoração", image: "assets/casa.png"),
                        Category(name: "Cozinha", image: "assets/cozinha.png"),
                        Category(name: "Tecnologia", image: "assets/tecnologia.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 150,
              child: PageView.builder(
                controller: _pageControllerbottom,
                itemCount: _imagesbottom.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPagebottom = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Image.asset(
                    _imagesbottom[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dê um estilo à cozinha",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),  
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color(0XFFE2EEF7)),
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
                        Item(
                          image: "assets/afiador.png",
                          name: "Afiador de Facas 4 em 1",
                          price: 256.90,
                          onSale: true,
                          newprice: 137.90,
                          installment: 11.49,
                        ),
                        Item(
                          image: "assets/cafeteira.png",
                          name: "Cafeteira Italiana",
                          price: 120.00,
                          onSale: false,
                          installment: 10.90,
                        ),
                        Item(
                          image: "assets/airfryer.png",
                          name: "Fritadeira Airfryer Essential Xl Conectada à Alexa, Philips Walita",
                          price: 409.90,
                          onSale: true,
                          newprice: 379.90,
                          installment: 35.90,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Image.asset(
              "assets/utensilios.png",
              height: 150,
            ),
            SizedBox(height: 32,),
            Icon(
              Icons.shopping_cart_outlined,
              size: 80,
            ),
            SizedBox(height: 8,),
            Text(
              "Seu carrinho está vazio",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8,),
            ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0XFF67B435)),
              ),
              child: Text(
                "Veja nossos produtos",
                style: TextStyle(
                  color: Colors.white
                ),
              )
            ),
            SizedBox(height: 24,),
            Container(
              width: double.infinity,
              color: Color(0XFF10278A),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FooterText(
                      title: "SOBRE NÓS",
                      isButtom: true,
                      onPressed: () {

                      }
                    ),
                    Divider(),
                    FooterText(
                      title: "AJUDA",
                      isButtom: true,
                      onPressed: () {

                      }
                    ),
                    Divider(),
                    FooterText(
                      title: "FIQUE POR DENTRO",
                      isButtom: false,
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Cadastre-se para receber nossas ofertas!",
                      style: TextStyle(
                        color: Colors.white
                      ),  
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 300,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "E-mail",
                              labelStyle: TextStyle(
                                color: Color(0XFFCAAC81),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),  
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: (){

                          },
                          icon: Icon(Icons.arrow_forward),
                          style: ButtonStyle(
                            iconSize: MaterialStatePropertyAll(40),
                            iconColor: MaterialStatePropertyAll(Color(0XFFCAAC81)),
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}