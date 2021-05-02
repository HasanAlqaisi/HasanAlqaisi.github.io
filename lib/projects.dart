import 'package:flutter/material.dart';

class Projects {
  final String name;
  final String desc;
  final String githubUrl;
  final String playStoreUrl;
  final String appleStoreUrl;

  Projects({
    @required this.name,
    @required this.desc,
    this.githubUrl,
    this.playStoreUrl,
    this.appleStoreUrl,
  });
}

List<Projects> projects = [
  Projects(
    name: "Diana Assistant",
    desc:
        "Diana can notify you with your daily tasks so you can be sure that nothing will be missed. It can help you to have better habits by providing it with your habit info and it will take care of reminding you and encouraging you to do it consistently. Diana is your daily task assistant to help you have a better day.",
    githubUrl: "https://github.com/softshapeorg/diana-mobile",
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=org.softshape.opensource.diana",
  ),
  Projects(
    name: "My Portfolio",
    desc:
        "A simple portfolio for me so you can get to know me better, contact me and check my projects",
  )
];
