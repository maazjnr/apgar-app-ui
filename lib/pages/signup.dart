import 'package:apgar_app/constant/constant.dart';
import 'package:apgar_app/pages/succes_register.dart';
import 'package:apgar_app/widgets/signup_textfield.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: secondaryLight),
        child: Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Image(
                  width: 300,
                  height: 200,
                  image: AssetImage("assets/image2.png")),
              Text(
                'Register your Hospital',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: defaultSpacing * 1.5,
                    color: primaryDark,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: defaultSpacing,
              ),
              SignUpTextField(),
              Container(
                width: 330,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryDark)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SuccessRegister()),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: defaultSpacing * 1.1,
                        fontWeight: FontWeight.w400,
                        color: secondaryLight),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Registered ?',
                    style: TextStyle(
                        fontSize: defaultSpacing * 1.1,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: defaultSpacing * 1.1,
                      fontWeight: FontWeight.w700,
                      color: primaryDark,
                    ),
                  ),
                ],
              )
            ],
          )),
        ));
  }
}
