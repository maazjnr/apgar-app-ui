import 'package:apgar_app/constant/constant.dart';
import 'package:apgar_app/data/onboarding.dart';
import 'package:apgar_app/pages/signup.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: secondaryLight),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: defaultSpacing * 2,
          ),
          Image(
              width: 300, height: 200, image: AssetImage("assets/image2.png")
              ),
          SizedBox(
            height: defaultSpacing * 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                contents[1].title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: defaultSpacing * 1.3,
                    color: primaryDark,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: defaultSpacing / 2.5,
              ),
              Text(
                contents[1].discription,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontSize: defaultSpacing, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: defaultSpacing * 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 10,
                  decoration: BoxDecoration(
                      color: primaryDark,
                      borderRadius: BorderRadius.circular(12)),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  width: 15,
                  height: 10,
                  decoration: BoxDecoration(
                      color: fontLight,
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
          ),
          SizedBox(
            height: defaultSpacing * 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultRadius),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: defaultSpacing * 1.3,
                        fontWeight: FontWeight.w400,
                        color: primaryDark),
                  ),
                ),
                Container(
                  width: 140,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius)),
                  child: ElevatedButton(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
