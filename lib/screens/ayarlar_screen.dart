import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import '../widgets/bottom_menu.dart';

class AyarlarScreen extends StatelessWidget {
  const AyarlarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: arkaplanRengim,
        body: Center(
          child: Text("ayarlar ekranım"),
        ),
        bottomNavigationBar: BottomMenu());
  }
}
