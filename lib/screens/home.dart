import 'package:apgar_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/card_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List = [
    CardContainer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: defaultSpacing * 12,
              decoration: BoxDecoration(color: primaryDark),
              child: Padding(
                padding: const EdgeInsets.all(defaultSpacing * 1.6),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.abc_outlined),
                        Image.asset('assets/logo.png'),
                        Icon(
                          Icons.notifications_outlined,
                          size: defaultSpacing * 2,
                          color: secondaryLight,
                        )
                      ],
                    ),
                    SizedBox(
                      height: defaultSpacing * 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: secondaryLight,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search ID',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              // clear the search query
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        onChanged: (String query) {
                          // do something with the search query
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              children: [
                SizedBox(
                  height: 200,
                ),
                CardContainer()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
