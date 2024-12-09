import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/core/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: arkaplanRengim,
        // AppBar
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 29, 29, 54),
          title: const Text(
            'GameLog',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(color: Colors.white, CupertinoIcons.app),
              onPressed: () {},
            ),
          ],
        ),

        // Drawer (Yan Menü)
        drawer: Drawer(
          backgroundColor: arkaplanRengim,
          child: Column(
            children: [
              // Drawer Header
              Container(
                height: 200,
                //color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.person_circle,
                      size: 80,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Kullanıcı Adı',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              // Menü öğeleri

              ListTile(
                leading: const Icon(CupertinoIcons.home),
                title: const Text(
                  'Ana Sayfa',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.person),
                title: const Text(
                  'Profil',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  context.go("/profile");
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.settings),
                title: const Text(
                  'Ayarlar',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        // Ana içerik
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const Text(""),
              ),
            ),
          ],
        ),

        // Alt navigasyon çubuğu
        bottomNavigationBar: const BottomMenu());
  }
}
