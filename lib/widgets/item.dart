import 'package:flutter/material.dart';

class Item extends StatelessWidget {

  final String name;
  final String image;
  final double price;
  final double? newprice;
  final bool onSale;
  final double installment;
  int? percent;
  Item({
      super.key,
      required this.image, 
      required this.name,
      required this.price,
      required this.onSale,
      this.newprice,
      required this.installment,
    }) {
        percent = newprice != null
          ? ((1 - newprice! / price) * 100).round().clamp(0, 100)
          : null;
       }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
        
          },
          child: Container(
            color: Colors.white,
            height: 400,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                onSale
                ? Column(
                  children: [
                    SizedBox(height: 8,),
                    Container(
                        color: Color(0XFF3BB177),
                        height: 30,
                        width: 125,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Economia de $percent%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                            
                      ),
                  ],
                )
                
                : SizedBox(height: 38,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            image,
                            height: 200,
                            width: 200,
                          ),
                          Positioned(
                            top: 15,
                            right: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0XFF0E0F64).withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: AspectRatio(
                                  aspectRatio: 405 / 115,
                                  child: Image.asset(
                                    'assets/logodeitada.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onSale
                      ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "R\$ $price",
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "R\$ $newprice",
                            style: TextStyle(
                              color: Color(0XFF3BB177),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                      : Text(
                          "R\$ $price",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                      ),
                      Row(
                        children: [
                          Text(
                            "ou 12x de",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 4,),
                          Text(
                            "R\$ $installment",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
        SizedBox(width: 2,),
      ],
    );
  }
}