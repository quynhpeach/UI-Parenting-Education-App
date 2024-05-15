import 'package:flutter/material.dart';
import 'package:concuatui_appclone/utils/app_text.dart';

class HorizontalListView extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'title': AppStrings.titlepc1, 'image': 'stressful.png'},
    {'title': AppStrings.titlepc2, 'image': 'cuongidol.png'},
    {'title': AppStrings.titlepc3, 'image': 'deathtelling.png'},
  ];

  HorizontalListView({super.key});

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
