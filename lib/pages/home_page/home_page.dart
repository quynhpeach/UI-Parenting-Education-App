import 'package:concuatui_appclone/components/carousel.dart';
import 'package:concuatui_appclone/components/gradient_background.dart';
import 'package:concuatui_appclone/components/search_bar.dart';
import 'package:concuatui_appclone/pages/add_child_page/add_child_page.dart';
import 'package:concuatui_appclone/pages/podcast_page/podcast_page.dart';
import 'package:concuatui_appclone/pages/posts_page/post_page.dart';
import 'package:concuatui_appclone/theme/theme.dart';
import 'package:concuatui_appclone/utils/app_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //Thanh search
              const SearchBarCustom(),
              //Thêm con
              const AddChildPage(),
              //Podcast
              const PodcastPage(),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    'Bài viết mới',
                    style: TextStyle(
                        color: Color(0xFF77B05A),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Spacer(flex: 2),
                  Icon(EvaIcons.chevronRightOutline, color: colorScheme.primary)
                ],
              ),
              HorizontalListViewPosts(),
              CarouselCustom(),
              HorizontalScrollForYouWidget(),
            ],
          )),
    );
  }
}
