/*

🎯 Iconography in Flutter
🖼️ What is Iconography?
Iconography refers to using icons as visual symbols that represent actions,
objects, or content. Icons help improve navigation and enhance UI clarity.


| Package                | Description                               |
| ---------------------- | ----------------------------------------- |
| `Icons`                | Default Material Icons (Flutter built-in) |
| `CupertinoIcons`       | iOS-style icons                           |
| `font_awesome_flutter` | Font Awesome icons                        |
| `flutter_svg`          | For using scalable SVG icons              |

 */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconographyScreen extends StatefulWidget {
  const IconographyScreen({super.key});

  @override
  State<IconographyScreen> createState() => _IconographyScreenState();
}

class _IconographyScreenState extends State<IconographyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Icon(FontAwesomeIcons.cableCar,color: Colors.blueAccent,size: 100,)
        ],
      ),
    );
  }
}
