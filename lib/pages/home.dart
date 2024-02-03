import 'package:flutter/material.dart';
import 'package:heroanimation/pages/hero_details.dart';

import '../models/hero_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HeroItems();
    return Scaffold(
      appBar: AppBar(
        title: Text("Country"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        itemCount: controller.items.length,
          itemBuilder: (context,index){
        return Column(
          children: [
            ListTile(
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    HeroDetails(items: controller.items[index])));
              },
              title: Text(controller.items[index].title),
              leading: Hero(
                tag: controller.items[index].image,
                child: CircleAvatar(
                  backgroundImage: AssetImage(controller.items[index].image),
                  radius: 30,
                ),
              ),
            ),
            SizedBox(height: 30,)
          ],
        );
      }),
    );
  }
}
