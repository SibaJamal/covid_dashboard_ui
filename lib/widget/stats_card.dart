import 'dart:core';
import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String text;
  final String count;
  final Color color;

  StatsCard({super.key, required this.text,required this.count, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,style: const TextStyle(color: Colors.white,fontSize: 20),),
              Text(count,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
