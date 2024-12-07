import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                context.go("/home");
              },
              icon: Icon(
                color: Colors.white,
                CupertinoIcons.home,
              ),
            ),
            IconButton(
              onPressed: () {
                context.go("/search");
              },
              icon: Icon(
                color: Colors.white,
                CupertinoIcons.search,
              ),
            ),
            IconButton(
              onPressed: () {
                context.go("/profile");
              },
              icon: Icon(
                color: Colors.white,
                CupertinoIcons.person,
              ),
            ),
          ],
        ));
  }
}