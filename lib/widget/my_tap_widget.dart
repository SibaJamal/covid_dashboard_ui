import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/styles.dart';

class MyTapWidget extends StatelessWidget{
  const MyTapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.white24,),
            child: const TabBar(
              indicator: BubbleTabIndicator(
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
                indicatorHeight: 40.0,
                indicatorColor: Colors.white,
              ),
              labelStyle: Styles.tabTextStyle,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
            tabs: [
              Text('My Country'),
              Text('Global'),
            ],
          ),),
        ),
      ),
    );
  }
  }