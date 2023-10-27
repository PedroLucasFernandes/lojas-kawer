import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
        color: Color(0XFF0E0F64),
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(height: 75,),
                Align(
                  alignment: Alignment.center,
                  child: Title(
                    color: Color(0XFFCAAC81),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0XFFCAAC81),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                SizedBox(height: 18),
                TextFormField(
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
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Color(0XFFCAAC81),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),  
                  ), 
                  obscureText: true,
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  child:
                    Text(
                      "Iniciar",
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/home_page");
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
              ],
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: Image.asset(
                "assets/logo.png",
                width: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}