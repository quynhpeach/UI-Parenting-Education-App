import 'dart:convert';

import 'package:concuatui_appclone/components/gradient_background.dart';
import 'package:concuatui_appclone/theme/theme.dart';
import 'package:concuatui_appclone/utils/explorePage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  final List<Map<String, dynamic>> data = explorePageData;

  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Text('Khám phá',
                  style: TextStyle(
                      color: colorScheme.primary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              const Spacer(flex: 2),
              const Icon(EvaIcons.searchOutline),
            ],
          ),
        )
      ],
    )));
  }
}
