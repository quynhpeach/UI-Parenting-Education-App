import 'package:concuatui_appclone/components/gradient_background.dart';
import 'package:concuatui_appclone/theme/theme.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/avatar.png',
                      height: 50, width: 50),
                  const SizedBox(width: 18),
                  Text('Bạn chưa đăng nhập',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14))
                ],
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/newborn.png',
                      height: 30, width: 30),
                  const SizedBox(width: 18),
                  Text('Tôi đang nuôi dạy con cái',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14)),
                  const Spacer(flex: 1),
                  FilledButton.tonal(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.grey.shade400,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Set the border radius here
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Thêm con',
                          style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
            Container(
                height: 50,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/google.png',
                      height: 40, width: 40),
                ]))
          ],
        ),
      ),
    );
  }
}
