import 'package:apgar_app/widgets/database_card.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ApgarDatabase extends StatelessWidget {
  const ApgarDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(color: primaryDark),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultSpacing),
              child: Stack(
                children: [
                  Positioned(
                    top: 86,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: secondaryLight,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Database',
                          style: TextStyle(
                              fontSize: defaultSpacing * 1.2,
                              fontWeight: FontWeight.bold,
                              color: secondaryLight),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: defaultSpacing),

          DataBaseCard(),
        ],
      ),
    );
  }
}
