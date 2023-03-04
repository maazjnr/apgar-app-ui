import 'package:apgar_app/constant/constant.dart';
import 'package:apgar_app/widgets/new_notification.dart';
import 'package:flutter/material.dart';

import '../widgets/earlieNot.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(color: primaryDark),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
              child: Stack(
                children: [
                  Positioned(
                    top: 86,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: secondaryLight,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(
                              fontSize: defaultSpacing * 1.2,
                              fontWeight: FontWeight.bold,
                              color: secondaryLight),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: defaultSpacing * 2, left: defaultSpacing, bottom: 5),
            child: Text(
              'New Notifications',
              style:
                  TextStyle(color: primaryDark, fontSize: defaultSpacing * 1.2),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 214, 212, 212)),
          ),
          SizedBox(
            height: defaultSpacing * 1.5,
          ),
          NewNotification(),

           Padding(
            padding: const EdgeInsets.only(
                top: defaultSpacing * 2, left: defaultSpacing, bottom: 5),
            child: Text(
              'Earlier Notifications',
              style:
                  TextStyle(color: primaryDark, fontSize: defaultSpacing * 1.2),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 214, 212, 212)),
          ),

          EarlierNotification()
        ],
      ),
    );
  }
}
