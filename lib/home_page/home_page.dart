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
    return SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF77B05A), width: 0.8),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.all(8),
                      child: const Text(
                        'Tìm kiếm',
                        style: TextStyle(fontSize: 14, color: Colors.black26),
                      )),
                  const Spacer(flex: 2),
                  Container(
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color(0xFF77B05A),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: const Icon(
                        EvaIcons.search,
                        color: Colors.white,
                        size: 17,
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
