import 'package:flutter/material.dart';

import 'home/home_page.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
      home: HomePage(),
    );
  }
}
