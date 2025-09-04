import 'package:covid_dashboard_ui/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      leading: IconButton(onPressed:(){}, icon:const Icon(Icons.menu),iconSize: 28.0,),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none,),iconSize: 28.0,),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
