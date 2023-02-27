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
        Padding(
          padding: const EdgeInsets.only(right: defaultSpacing * 10.5),
          child: Text(
            'Take APGAR score',
            style: TextStyle(
              fontSize: defaultSpacing * 1.4,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 101, 101, 101),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: defaultRadius / 1.3,
        ),
        Container(
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultSpacing),
            image: DecorationImage(
                image: AssetImage('assets/homeimg1.png'), fit: BoxFit.cover),
          ),
          child: Column(children: [
            Spacer(),
            Container(
              width: double.infinity,
              height: 60,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 227, 226, 226)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Instantly input APGAR parameters\nandgenerate APGAR score of a new\nborn baby',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          height: 1.3),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(defaultRadius / 1.5),
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
                          'Take a score',
                          style: TextStyle(
                              fontSize: defaultSpacing * 1.1,
                              fontWeight: FontWeight.w400,
                              color: secondaryLight),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
        SizedBox(
          height: defaultSpacing,
        ),
        Container(
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultSpacing),
            image: DecorationImage(
                image: AssetImage('assets/homeimg2.png'), fit: BoxFit.cover),
          ),
          child: Column(children: [
            Spacer(),
            Container(
              width: double.infinity,
              height: 60,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 227, 226, 226)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Easy access to APGAR\npast records',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          height: 1.3),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(defaultRadius / 1.5),
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
                          'Check Database',
                          style: TextStyle(
                              fontSize: defaultSpacing * 1.1,
                              fontWeight: FontWeight.w400,
                              color: secondaryLight),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}
