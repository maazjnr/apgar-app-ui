import 'package:flutter/material.dart';

import '../constant/constant.dart';

class EarlierNotification extends StatelessWidget {
  const EarlierNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
      child: Column(
        children: [
          SizedBox(
            height: defaultSpacing,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: primaryDark,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    '06',
                    style: TextStyle(
                        color: secondaryLight,
                        fontWeight: FontWeight.bold,
                        fontSize: defaultSpacing * 1.3),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Your Hospittal as been successfully registered ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: defaultRadius,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '10 month ago',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Container(
                    width: 256,
                    height: 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 214, 212, 212)),
                  ),
                ],
              ),
              Icon(
                Icons.delete_sharp,
                color: Colors.red,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: defaultSpacing * 2,
          ),
        ],
      ),
    );
  }
}
