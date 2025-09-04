import 'package:covid_dashboard_ui/widget/stats_card.dart';
import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.30,
        child: Column(
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                StatsCard(text: 'Affected',count: '336,851',color:Colors.yellow,),
                StatsCard(text: 'Death',count: '9,634',color:Colors.red,),
              ],),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                StatsCard(text: 'Recovered',count: '17,456',color:Colors.green,),
                StatsCard(text: 'Active',count: '301,851',color:Colors.blue,),
                StatsCard(text: 'Serious',count: '12,851',color:Colors.purple,),
              ],),
            )
          ],
        ),
      ),

    );
  }
}

