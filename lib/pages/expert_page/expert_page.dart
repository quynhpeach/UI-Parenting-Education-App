import 'package:concuatui_appclone/components/gradient_background.dart';
import 'package:concuatui_appclone/theme/theme.dart';
import 'package:concuatui_appclone/utils/app_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ExpertPage extends StatefulWidget {
  const ExpertPage({super.key});

  @override
  State<ExpertPage> createState() => _ExpertPageState();
}

class _ExpertPageState extends State<ExpertPage> {
  final List<Map<String, String>> mockData = [
    {"name": "Samantha Johnson", "role": "Student Council President"},
    {"name": "Michael Smith", "role": "Math Club Treasurer"},
    {"name": "Emily Brown", "role": "Debate Team Captain"},
    {"name": "Jacob Martinez", "role": "Football Team Captain"},
    {"name": "Olivia Taylor", "role": "Yearbook Editor"},
    {"name": "Ethan Clark", "role": "Science Club President"},
    {"name": "Sophia Anderson", "role": "Drama Club President"},
    {"name": "Ryan White", "role": "Chess Club President"},
    {"name": "Ava Rodriguez", "role": "Choir Section Leader"},
    {"name": "Daniel Lee", "role": "Art Club President"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CHUYÊN GIA',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  width: 500,
                  height: 100,
                  child: GradientBackground(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(EvaIcons.awardOutline,
                          color: colorScheme.primary, size: 28),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(AppStrings.graph,
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                            softWrap: true),
                      ),
                    ],
                  ))),
              ...mockData.map((e) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: -3),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/avatar.png',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      e['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      e['role']!,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ));
  }
}
