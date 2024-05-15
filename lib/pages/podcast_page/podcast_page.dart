import 'package:concuatui_appclone/utils/app_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap functionality here
        print('Box tapped!');
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.end,
              spacing: 10,
              children: [
                Image.asset(
                  'assets/images/microphone.png',
                  height: 20,
                  width: 20,
                ),
                const Text('Podcast',
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                const Icon(
                  EvaIcons.chevronRightOutline,
                  size: 18,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 7),
                    Text(AppStrings.podcast1,
                        style: TextStyle(fontSize: 13, color: Colors.black54)),
                    Text(AppStrings.podcast2,
                        style: TextStyle(fontSize: 13, color: Colors.black54)),
                    Text(AppStrings.podcast3,
                        style: TextStyle(fontSize: 13, color: Colors.black54)),
                  ],
                ),
                Image.asset(
                  'assets/images/podcast.jpg',
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
