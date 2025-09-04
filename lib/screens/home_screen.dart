import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/custom_app_bar.dart';
import '../widget/do_test_widget.dart';
import '../widget/my_header_widget.dart';
import '../widget/prevention_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          const MyHeaderWidget(),
          SliverToBoxAdapter(child: SizedBox(height: screenHeight*0.01)),
          const PreventionWidget(),
          SliverToBoxAdapter(child: SizedBox(height: screenHeight*0.01)),
          const DoTestWidget()

        ],
      ),
    );
  }
}
