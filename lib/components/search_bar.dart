import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchBarCustom extends StatefulWidget {
  const SearchBarCustom({super.key});

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF77B05A), width: 0.8),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: const Text(
                      'Tìm kiếm',
                      style: TextStyle(fontSize: 14, color: Colors.black26),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFF77B05A),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Icon(
                      EvaIcons.search,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
              width:
                  8), // Add some spacing between the search container and the icon
          const Icon(
            EvaIcons.bellOutline,
          ),
        ],
      ),
    );
  }
}
