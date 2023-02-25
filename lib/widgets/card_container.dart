import 'package:apgar_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

import '../pages/signup.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: defaultSpacing),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultSpacing),
            image: DecorationImage(
              image: AssetImage('assets/homeimg1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Instantly input APGAR parameters and \n generate APGAR score of a new born baby'),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(defaultRadius),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryDark)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: defaultSpacing * 1.1,
                          fontWeight: FontWeight.w400,
                          color: secondaryLight),
                    ),
                  ),
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
