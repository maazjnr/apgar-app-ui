import 'package:apgar_app/data/pastrecordsdata.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class PastRecords extends StatelessWidget {
  const PastRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: defaultSpacing,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultSpacing),
                  image: DecorationImage(
                      image: AssetImage('assets/homeimg1.png'),
                      fit: BoxFit.cover),
                ),
                width: 150,
                height: 150,
                child: Text('Hello'),
              )
            ],
          ),
          SizedBox(
            height: defaultSpacing,
          ),
        ],
      ),
    );
  }
}
