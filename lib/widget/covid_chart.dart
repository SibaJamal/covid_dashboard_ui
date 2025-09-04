import 'package:covid_dashboard_ui/config/palette.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/styles.dart';
import '../data/data.dart';

class CovidChart extends StatelessWidget {
  final List<double> covidCases;
  const CovidChart({super.key, required this.covidCases});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top:20),
      sliver: SliverToBoxAdapter(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20.0),
            ),
          ),
          height: MediaQuery.of(context).size.height*0.70,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Daily New Cases',style: TextStyle(fontWeight: FontWeight.bold,color: Palette.textColor,fontSize: 20.0),),
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                height: MediaQuery.of(context).size.height*0.20,
                child: BarChart(
                  BarChartData(
                    barTouchData: barTouchData,
                    titlesData: titlesData,
                    borderData: borderData,
                    barGroups: barGroups,
                    gridData: const FlGridData(show: false),
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 20,
                  ),
                )
                ),
            ],
          ),
        ),
      ),
    );
  }
}
BarTouchData get barTouchData => BarTouchData(
  enabled: false,
  touchTooltipData: BarTouchTooltipData(
    tooltipBgColor: Colors.transparent,
    tooltipPadding: EdgeInsets.zero,
    tooltipMargin: 8,
    getTooltipItem: (
        BarChartGroupData group,
        int groupIndex,
        BarChartRodData rod,
        int rodIndex,
        ) {
      return BarTooltipItem(
        rod.toY.round().toString(),
        Styles.chartLabelsTextStyle
      );
    },
  ),
);

Widget getTitles(double value, TitleMeta meta) {
  String text;
  switch (value.toInt()) {
    case 0:
      text = 'Mon';
      break;
    case 1:
      text = 'Te';
      break;
    case 2:
      text = 'Wd';
      break;
    case 3:
      text = 'Tu';
      break;
    case 4:
      text = 'Fr';
      break;
    case 5:
      text = 'St';
      break;
    case 6:
      text = 'Sn';
      break;
    default:
      text = '';
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 4,
    child: Text(text, style:  Styles.chartLabelsTextStyle),
  );
}

FlTitlesData get titlesData => const FlTitlesData(
  show: true,
  bottomTitles: AxisTitles(
    sideTitles: SideTitles(
      showTitles: true,
      reservedSize: 30,
      getTitlesWidget: getTitles,
    ),
  ),
  leftTitles: AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
  topTitles: AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
  rightTitles: AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
);

FlBorderData get borderData => FlBorderData(
  show: false,
);

LinearGradient get _barsGradient => const LinearGradient(
  colors: [
    Colors.red,
    Palette.primaryColor,
  ],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);

List<BarChartGroupData> get barGroups => [
  BarChartGroupData(
    x: 0,
    barRods: [
      BarChartRodData(
        toY: 8,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 1,
    barRods: [
      BarChartRodData(
        toY: 10,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 2,
    barRods: [
      BarChartRodData(
        toY: 14,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 3,
    barRods: [
      BarChartRodData(
        toY: 15,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 4,
    barRods: [
      BarChartRodData(
        toY: 13,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 5,
    barRods: [
      BarChartRodData(
        toY: 10,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 6,
    barRods: [
      BarChartRodData(
        toY: 16,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
];
