import 'package:flutter/material.dart';
import 'package:heroanimation/models/hero_info.dart';

class HeroDetails extends StatelessWidget {
  final HeroInfo items;
  const HeroDetails({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(items.title),
      ),
      body: Hero(tag:items.image ,child: Image.asset(items.image)),
    );
  }
}
