/*
🦸‍♂️ What is Hero Animation?
Jab ek screen se doosri screen pe same widget smoothly transform ho jaye — jese image ya card zoom hokar agle screen pe appear ho — use kehte hain Hero animation.

Iska effect hota hai:

"Widget teleport nahi karta, balki smoothly transition karta hai" — just like a hero flying between scenes. 🦸‍♂️
 */

import 'package:flutter/material.dart';


class HeroHomePage extends StatefulWidget {
  @override
  State<HeroHomePage> createState() => _HeroHomePageState();
}

class _HeroHomePageState extends State<HeroHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => DetailPage()));
          },
          child: Hero(
            tag: 'flutter-logo',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://c4.wallpaperflare.com/wallpaper/370/228/846/baby-elephant-elephant-amazing-wildlife-wallpaper-preview.jpg',
                width: 500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: 'flutter-logo',
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpmCSHKKCepW5NgNLIDfxz0u09ArqMbhU4u1OTYgvIVGIZK7XeyEiBzj-G3G5Iws1zXJY&usqp=CAU',
            width: 500,
          ),
        ),
      ),
    );
  }
}
