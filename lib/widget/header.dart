import 'package:covid_dashboard_ui/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text('Statistic',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
