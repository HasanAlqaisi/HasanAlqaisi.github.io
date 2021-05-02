import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20.0),
        _buildImage(),
        SizedBox(width: 20.0),
        Flexible(child: _buildColumnInfo()),
      ],
    );
  }

  Widget _buildImage() {
    return FractionallySizedBox(
      heightFactor: 0.60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset('assets/my_image.jpeg'),
      ),
    );
  }

  Widget _buildColumnInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hasan AlQaisi", textScaleFactor: 1.2),
        Text(
          "I am a flutter developer who has experince in native android for one year with kotlin language, \nthen, I switched to flutter to build apps for multiplatform with a beautiful UI.",
          textScaleFactor: 1.2,
        ),
        Row(
          children: buildLogos(
            length: 5,
            paths: [
              'flutter_icon.png',
              'firebase_icon.png',
              'dart_icon.png',
              'kotlin_icon.png',
              'cplus_icon.png',
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> buildLogos(
      {@required int length, @required List<String> paths}) {
    return List.generate(
      length,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        child: Image.asset(
          'assets/${paths[index]}',
          scale: 1.8,
        ),
      ),
    );
  }
}
