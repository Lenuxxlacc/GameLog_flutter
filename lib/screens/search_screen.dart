import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: arkaplanRengim,
      body: Center(
        child: Text("arama Ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
