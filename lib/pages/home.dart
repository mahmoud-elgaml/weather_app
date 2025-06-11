import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page.dart';
import 'package:weather_app/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text('Weather',
        style: TextStyle(
          color: kTextColor,
        ),
        ),
                centerTitle: true,

        //
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 20,
          vertical: 20,
          //
        ),
        child: Column(
          children: [
            SearchPage(),
            //
          ],
          //
        ),
      ),
    );
  }
}
