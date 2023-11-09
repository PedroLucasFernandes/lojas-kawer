import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color(0XFF0E0F64),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "KAWER",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0XFFCAAC81)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            ElevatedButton(
              child:
                Text(
                  "Entre aqui",
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              onPressed: () {
                Navigator.of(context).pushNamed("/login_page");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0XFFCAAC81)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child:
                Text(
                  "Novo usuário? Crie sua conta",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              onPressed: () {
                Navigator.of(context).pushNamed("/signup_page");
              },
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll(0),
                overlayColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.2)),
                backgroundColor: MaterialStatePropertyAll(Color(0XFF0E0F64)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}