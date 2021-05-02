import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatelessWidget {
  final String name;
  final String desc;
  final String playStoreUrl;
  final String appStoreUrl;
  final String githubUrl;

  const ProjectItem({
    Key key,
    @required this.name,
    @required this.desc,
    this.playStoreUrl,
    this.appStoreUrl,
    this.githubUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                name,
                textScaleFactor: 1.5,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Color(0xFF8d8d8d)),
              ),
            ),
            SizedBox(height: 24),
            Text(
              desc,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Color(0xFF949494), wordSpacing: 2.0),
            ),
            Spacer(),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              icon: Image.asset(
                'assets/github_icon.png',
                scale: 1.8,
              ),
              onPressed: () => launch(githubUrl),
              label: Text('Source Code'),
            ),
            SizedBox(height: 12),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              icon: Image.asset('assets/playstore_icon.png', scale: 1.4),
              onPressed: () => launch(playStoreUrl),
              label: Text('Play Store'),
            ),
            SizedBox(height: 12),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              icon: Image.asset('assets/appstore_icon.png', scale: 1.1),
              onPressed: () => launch(appStoreUrl),
              label: Text('Apple store'),
            ),
          ],
        ),
      ),
    );
  }
}
