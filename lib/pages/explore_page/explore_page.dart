import 'package:concuatui_appclone/components/gradient_background.dart';
import 'package:concuatui_appclone/theme/theme.dart';
import 'package:concuatui_appclone/utils/explorePageData.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  final List<Map<String, dynamic>> data = explorePageData;

  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int? tappedIndex;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 100,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Khám phá',
                        style: TextStyle(
                          color: colorScheme.primary,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(flex: 2),
                      const Icon(EvaIcons.searchOutline),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.data.map((item) {
                        final ageTitle = item['ageTitle'] ?? 'No title';
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              tappedIndex = widget.data.indexOf(item);
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tappedIndex == widget.data.indexOf(item)
                                    ? Color.fromARGB(255, 205, 236, 187)
                                        .withOpacity(0.2)
                                    : Colors.white,
                              ),
                              child: Text(
                                ageTitle,
                                style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      tappedIndex == widget.data.indexOf(item)
                                          ? colorScheme.primary
                                          : Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            if (tappedIndex != null)
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var content in explorePageData[tappedIndex!]
                            ['subContent'])
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              Text(
                                content['topic'],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.primary,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Wrap(
                                spacing: 8.0,
                                runSpacing: 4.0,
                                children: List<Widget>.from(
                                  content['subTopic'].map((subTopic) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 3.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                      ),
                                      child: Text(
                                        subTopic,
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
