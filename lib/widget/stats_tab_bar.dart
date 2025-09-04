import 'package:covid_dashboard_ui/config/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsTabBar extends StatelessWidget {
  const StatsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
        padding: EdgeInsets.all(10),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 3,
          child: TabBar(
            indicatorColor:Colors.transparent ,
            labelStyle: Styles.tabTextStyle,
            tabs: [
              Text('Total'),
              Text('Today'),
              Text('Yesterday'),
            ],
          ),
        ),
      ),
    );
  }
}
