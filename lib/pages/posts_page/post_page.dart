import 'package:flutter/material.dart';
import 'package:concuatui_appclone/utils/app_text.dart';

class HorizontalListViewPosts extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'title': AppStrings.titlepc1, 'image': 'stressful.png'},
    {'title': AppStrings.titlepc2, 'image': 'cuongidol.png'},
    {'title': AppStrings.titlepc3, 'image': 'deathtelling.png'},
  ];

  HorizontalListViewPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        children: data.map((item) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amber,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/${item['image']}',
                        width: 100,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.titlepc1,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            height: 1.25,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          AppStrings.headerTitle1,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class HorizontalScrollForYouWidget extends StatelessWidget {
  HorizontalScrollForYouWidget({super.key});
  final List<Map<String, String>> data = [
    {
      'title': 'Mối nguy hiểm khi cha mẹ sử dụng hành vi thao túng c...',
      'imagePath': 'assets/images/post1.png'
    },
    {
      'title': '4 lỗi sai khi dạy con mà phụ huynh thường mắc phải',
      'imagePath': 'assets/images/post2.png'
    },
    {
      'title': 'Lúc nắng lúc mưa: Cách tiếp cận con hiệu quả hơn',
      'imagePath': 'assets/images/post3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: data.map((item) {
          return Container(
            width: 150,
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    item['imagePath']!,
                    height: 100,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item['title']!,
                    style: const TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
