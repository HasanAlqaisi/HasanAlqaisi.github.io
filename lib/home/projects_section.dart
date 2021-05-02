import 'package:flutter/material.dart';
import 'package:portfolio/home/project_item.dart';
import 'package:portfolio/projects.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(24.0),
      crossAxisCount: 3,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(
        projects.length,
        (i) => ProjectItem(
          name: projects[i].name,
          desc: projects[i].desc,
          githubUrl: projects[i].githubUrl,
          playStoreUrl: projects[i].playStoreUrl,
          appStoreUrl: projects[i].appleStoreUrl,
        ),
      ),
    );
  }
}
