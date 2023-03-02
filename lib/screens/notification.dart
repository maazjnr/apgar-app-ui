import 'package:apgar_app/constant/constant.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: primaryDark,
          ),
          Positioned(
            top: 130,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultSpacing * 1.6),
                      topRight: Radius.circular(defaultSpacing * 1.6)),
                  color: secondaryLight,
                ),
                width: 350,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: defaultSpacing * 4.5),
                        child: Text(
                          'Notifications',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: defaultSpacing * 1.5,
                              color: primaryDark,
                              height: 1.3),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
