import 'package:apgar_app/constant/constant.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: secondaryLight),
      child: SafeArea(
          child: Column(
        children: [
          Image(
              width: 300, height: 200, image: AssetImage("assets/image2.png")),
          Text(
            'Register your Hospital',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: defaultSpacing * 1.5,
                color: primaryDark,
                fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
