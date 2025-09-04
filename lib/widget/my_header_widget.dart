import 'package:covid_dashboard_ui/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHeaderWidget extends StatefulWidget {
  const MyHeaderWidget({super.key});

  @override
  State<MyHeaderWidget> createState() => _MyHeaderWidgetState();
}

class _MyHeaderWidgetState extends State<MyHeaderWidget> {
  List<String> countryList= ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'];
  String country= 'FR';
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
        color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft:Radius.circular(40.0),
            bottomRight: Radius.circular(40.0)
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const Text('Covid-19',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Center(
                          child: DropdownButton(
                              icon: const Icon(Icons.keyboard_arrow_down,color: Palette.primaryColor,),
                            value: country,
                              items: countryList.map((e){return DropdownMenuItem(value: e,
                                  child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 12.0,
                                    child: Image.asset(
                                      'assets/images/${e.toLowerCase()}_flag.png',)
                                  ),
                                  const SizedBox(width: 10,),
                                  Text(e,style:const TextStyle(color: Palette.primaryColor,fontWeight: FontWeight.bold,fontSize: 20)),
                                ],
                              ));}).toList(),
                              onChanged: (String? newValue){
                              setState(() {
                                country= newValue!;
                              });
                              },
                            underline: Container(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Are you feeling sick?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('If you feel sick with any COVID-19 symptoms, please call or text us immediately for help',style: TextStyle(color: Colors.white70,fontSize: 15),),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton.icon(
                    icon: const Icon(Icons.call),
                    onPressed: (){},
                    label: const Text('Call Now'),
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(150, 50),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))
                      ),
                  ),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.messenger),
                    onPressed: (){},
                    label: const Text('Send SMS'),
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0))
                    ),
                  ),
                ],
            ),
             ),
          ],
        ),
      ),
    );

  }
}
