import 'package:apgar_app/constant/constant.dart';
import 'package:apgar_app/pages/signup.dart';
import 'package:flutter/material.dart';

class SuccessRetrieveId extends StatefulWidget {
  const SuccessRetrieveId({super.key});

  @override
  State<SuccessRetrieveId> createState() => _SuccessRetrieveIdState();
}

class _SuccessRetrieveIdState extends State<SuccessRetrieveId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: secondaryLight),
      child: Column(
        children: [
          SizedBox(
            height: defaultSpacing * 6,
          ),
          Text(
            'Success!',
            style: TextStyle(
                fontSize: defaultRadius * 2.2,
                color: primaryDark,
                fontWeight: FontWeight.w600),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: defaultSpacing * 4,
                ),
                Container(
                  width: 310,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultSpacing * 1.2),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 209, 209, 209).withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                        // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: defaultSpacing * 3,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(defaultSpacing * 2),
                            child: Text(
                              'Your Hospital ID No is',
                              style: TextStyle(
                                fontSize: defaultRadius * 1.4,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            '03',
                            style: TextStyle(
                              fontSize: defaultRadius * 3,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: primaryDark,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(defaultSpacing * 1.2),
                            bottomRight: Radius.circular(defaultSpacing * 1.2),
                          ),
                        ),
                        child: Center(child: SizedBox()),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(defaultSpacing * 2),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(160, 60)),
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
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
