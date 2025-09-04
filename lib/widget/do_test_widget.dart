import 'package:covid_dashboard_ui/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoTestWidget extends StatelessWidget {
  const DoTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight =MediaQuery.of(context).size.height;
    final screenWidth =MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10),
        height:screenHeight*0.15,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [Palette.primaryColor, Colors.white], // Define your gradient colors
          ),
          borderRadius: BorderRadius.circular(20.0), // Optional: Add rounded corners
        ),
       child: Row(
         children: [
           Image.asset('assets/images/own_test.png'),
           const SizedBox(width: 30),
            Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text('Do your own test!',textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
               SizedBox(height: screenHeight * 0.015),
               SizedBox(
                   width: screenWidth*0.5,
                   child: const Text('Follow the instructions to do your own test.',textAlign: TextAlign.left,style: TextStyle(color: Colors.white),)),
             ],
           )
         ],
       ),
      ),
    );
  }
}
