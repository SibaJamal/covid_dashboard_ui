import 'package:covid_dashboard_ui/config/palette.dart';
import 'package:covid_dashboard_ui/widget/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/covid_chart.dart';
import '../widget/header.dart';
import '../widget/my_tap_widget.dart';
import '../widget/stats_grid.dart';
import '../widget/stats_tab_bar.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),
      body:CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers:[
          Header(),
          StatsGrid(),
          CovidChart(covidCases: [],),

        ],
      ),
    );
}}
