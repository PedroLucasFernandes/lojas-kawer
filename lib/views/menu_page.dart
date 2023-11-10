import 'package:flutter/material.dart';
import 'package:lojas_kawer/widgets/appbar.dart';
import 'package:lojas_kawer/widgets/menu_text.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  final Uri facebookUrl = Uri.parse('https://web.facebook.com/lojakawer');
  final Uri instagramUrl= Uri.parse('https://www.instagram.com/lojakawer/');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: Bar(isMenu: true,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MenuText(title: "Início",
              onPressed: () {

              },
            ),
            MenuText(title: "Todos os produtos",
              onPressed: () {
                
              },
            ),
            MenuText(title: "Acessórios",
              onPressed: () {
                
              },
            ),
            MenuText(title: "Beleza",
              onPressed: () {
                
              },
            ),
            MenuText(title: "Casa & Decoração",
              onPressed: () {
                
              },
            ),
            MenuText(title: "Cozinha",
              onPressed: () {
                
              },
            ),
            MenuText(title: "Tecnologia",
              onPressed: () {
                
              },
            ),
            MenuText(title: "Mais vendidos",
              onPressed: () {
                
              },
            ),
            Divider(),
            Text("PRECISA DE AJUDA?"),
            MenuText(
              title: "+55 (11) 9 6737-1944",
              icon: Icon(Icons.phone_in_talk_outlined,
                size: 20,
              ),
            ),
            MenuText(
              title: "lojakawer@gmail.com",
              icon: Icon(Icons.email_outlined,
                size: 20,
              ),  
            ),
            Divider(),
            Text("SIGA-NOS"),
            MenuText(
              title: "Facebook",
              icon: Icon(Icons.facebook,
                size: 20,
              ),
              onPressed: () async {  
                try {
                  await launchUrl(facebookUrl);
                } catch (e) {

                }
              },
            ),
            MenuText(
              title: "Instagram",
              icon: Icon(Icons.camera_alt_outlined,
                size: 20,
              ),
              onPressed: () async {  
                try {
                  await launchUrl(instagramUrl);
                } catch(e) {
                  
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}