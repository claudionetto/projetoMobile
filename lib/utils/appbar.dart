import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;

  const MyAppBar({Key? key, this.showBackButton = false}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      title: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, "/home");
        },
        child: Image.asset(
          'images/logo_vidaleve.png',
          width: 70.0,
          height: 70.0,
        ),
      ),
    );
  }
}
