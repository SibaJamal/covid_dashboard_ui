import 'package:covid_dashboard_ui/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:covid_dashboard_ui/data/data.dart';

class PreventionWidget extends StatelessWidget {
  const PreventionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Preventions',style: TextStyle(color: Palette.textColor,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                prevention.map((e) => Column(
                  children: <Widget>[
                    Image.asset(
                      e.keys.first,
                      height: screenHeight * 0.12,
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    Text(
                      e.values.first,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                )).toList(),
            )
          ],
        ),
      ),
    );
  }
}
