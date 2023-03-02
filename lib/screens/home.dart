import 'package:apgar_app/constant/constant.dart';
import 'package:apgar_app/pages/signpage.dart';
import 'package:apgar_app/screens/notification.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/card_container.dart';
import '../widgets/past_records.dart';

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
      bottomNavigationBar: CurvedNavigationBar(
        height: 45,
          backgroundColor: secondaryLight,
          color: primaryDark,
          animationDuration: Duration(milliseconds: 300),
          items: [
            Icon(
              Icons.home,
              color: secondaryLight,
            ),
            Icon(Icons.favorite, color: secondaryLight),
            Icon(Icons.settings, color: secondaryLight)
          ]),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: primaryDark,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: defaultSpacing * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/logo.png',
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: defaultSpacing * 2.5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryDark,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationPage()));
                        },
                        child: Icon(
                          Icons.notifications_outlined,
                          size: defaultSpacing * 2,
                          color: secondaryLight,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: primaryDark,
                ),
                child: ListTile(
                  title: Text(
                    "Maaz Mapp",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: (() {}),
                leading: const Icon(Icons.settings),
                title: const Text(
                  "Setting",
                ),
              ),
              ListTile(
                onTap: (() {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SignPage();
                      },
                    ),
                  );
                }),
                leading: const Icon(Icons.logout),
                title: const Text(
                  "Logout",
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: defaultSpacing * 6,
              decoration: BoxDecoration(color: primaryDark),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: defaultSpacing),
                child: Column(
                  children: [
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
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(defaultSpacing / 1.3),
                child: Column(
                  children: [CardContainer(), PastRecords()],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
