import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../pages/signup.dart';

class ApgarScore extends StatelessWidget {
  const ApgarScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: secondaryLight),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: defaultSpacing * 10,
              ),
              Container(
                width: 290,
                height: 350,
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
                      height: defaultSpacing,
                    ),
                    Text(
                      'Success!',
                      style: TextStyle(
                          fontSize: defaultRadius * 2.2,
                          color: primaryDark,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultSpacing * 2),
                      child: Text(
                        'You have successfully registered your Hospital',
                        style: TextStyle(
                          fontSize: defaultRadius * 1.4,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                      child: Center(
                        child: Text(
                          'ID No 03',
                          style: TextStyle(
                            fontSize: defaultRadius * 2,
                            color: secondaryLight,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultSpacing * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Colors
                                .blue, // specify your desired border color here
                            width: 2, // specify the width of the border
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(140, 50)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(defaultRadius / 2),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(secondaryLight),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        'Skip to record',
                        style: TextStyle(
                            fontSize: defaultSpacing / 1.2,
                            fontWeight: FontWeight.w400,
                            color: primaryDark),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(140, 50)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(defaultRadius / 2),
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
                        'Add material record',
                        style: TextStyle(
                            fontSize: defaultSpacing / 1.2,
                            fontWeight: FontWeight.w400,
                            color: secondaryLight),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: defaultSpacing * 2.6, top: defaultSpacing),
                child: Row(
                  children: [
                    Icon(
                      Icons.warning_amber_outlined,
                      color: Colors.redAccent,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultSpacing / 2),
                      child: Text(
                        'Adding maternal record is an added advanatage',
                        style: TextStyle(
                          fontSize: defaultRadius,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
