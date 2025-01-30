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

        // AppBar
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text(
            'GameLog',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          actions: [
            IconButton(
              icon: Icon(
                  color: Theme.of(context).colorScheme.primary,
                  CupertinoIcons.app),
              onPressed: () {},
            ),
          ],
        ),

        // Drawer (Yan Menü)

        drawer: Drawer(
          child: Column(
            children: [
              // Drawer Header
              Container(
                height: 200,
                //color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.person_circle,
                      size: 80,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Kullanıcı Adı',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              // Menü öğeleri

              ListTile(
                leading: const Icon(CupertinoIcons.home),
                title: Text(
                  'Ana Sayfa',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.person),
                title: Text(
                  'Profil',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                onTap: () {
                  context.go("/profile");
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.settings),
                title: Text(
                  'Ayarlar',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                onTap: () {
                  context.go("/ayarlar");
                },
              ),
            ],
          ),
        ),

        // Ana içerik
        backgroundColor: Theme.of(context).colorScheme.surface,
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
