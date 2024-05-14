import 'package:calculator_app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80.h);
}

bool onToggle = false;

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                onToggle = !onToggle;
              });
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            icon: onToggle
                ? Icon(Icons.dark_mode)
                : Icon(Icons.light_mode_outlined)),
      ],
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
