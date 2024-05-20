import 'package:concuatui_appclone/components/gradient_background.dart';
import 'package:concuatui_appclone/theme/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

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
                children: _user == null
                    ? [
                        Image.asset('assets/images/avatar.png',
                            height: 50, width: 50),
                        const SizedBox(width: 18),
                        Text(
                          'Bạn chưa đăng nhập',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 14),
                        ),
                      ]
                    : [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(_user!.photoURL!)),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        const SizedBox(width: 18),
                        Text(
                          '${_user!.email}',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 14),
                        ),
                        const Spacer(flex: 1),
                        GestureDetector(
                          onTap: () {
                            _auth.signOut();
                          },
                          child: const Icon(EvaIcons.logOut,
                              color: Colors.grey, size: 25),
                        ),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 1),
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
            if (_user == null) ...[
              GestureDetector(
                onTap: () {
                  try {
                    GoogleAuthProvider googleAuthProvider =
                        GoogleAuthProvider();
                    _auth.signInWithProvider(googleAuthProvider);
                  } catch (e) {
                    print(e);
                  }
                },
                child: Container(
                  width: 300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13)),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    spacing: 10,
                    children: [
                      Image.asset('assets/images/google.png',
                          height: 30, width: 30),
                      Text(
                        'Đăng nhập bằng Google',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: 300,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.blueAccent.shade400,
                    borderRadius: BorderRadius.circular(13)),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.horizontal,
                  spacing: 10,
                  children: [
                    Image.asset('assets/images/facebook.png',
                        height: 30, width: 30),
                    const Text(
                      'Đăng nhập bằng Facebook',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                  width: 300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(13)),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    spacing: 10,
                    children: [
                      Image.asset('assets/images/apple.png',
                          height: 30, width: 30),
                      const Text(
                        'Đăng nhập bằng Apple',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ]
          ],
        ),
      ),
    );
  }
}
