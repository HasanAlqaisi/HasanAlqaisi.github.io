import 'package:flutter/material.dart';
import 'package:portfolio/home/projects_section.dart';

import 'header_section.dart';

import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              _launchURL('https://www.facebook.com/HRAA37/');
            },
            icon: Image.asset('assets/facebook_icon.png'),
          ),
          IconButton(
            onPressed: () {
              _launchURL('https://www.instagram.com/hasan.3.7/');
            },
            icon: Image.asset('assets/instagram_icon.png'),
          ),
          IconButton(
            onPressed: () {
              _launchURL('https://github.com/HasanAlqaisi/');
            },
            icon: Image.asset('github_icon.png'),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: _headerDecoration(),
            child: HeaderSection(),
          ),
          SizedBox(height: 24),
          Center(
            child: Text(
              'My Projects',
              textScaleFactor: 1.6,
              style: TextStyle(color: Color(0xFF7b7b7b)),
            ),
          ),
          ProjectsSection()
        ],
      ),
    );
  }

  Decoration _headerDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
      ),
    );
  }

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
