import 'package:apgar_app/constant/constant.dart';
import 'package:apgar_app/pages/signup.dart';
import 'package:flutter/material.dart';

class SuccessRegister extends StatefulWidget {
  const SuccessRegister({super.key});

  @override
  State<SuccessRegister> createState() => _SuccessRegisterState();
}

class _SuccessRegisterState extends State<SuccessRegister> {
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
                padding: const EdgeInsets.only(
                    left: defaultSpacing * 2.6, top: defaultSpacing),
                child: Row(
                  children: [
                    Icon(
                      Icons.warning_amber_outlined,
                      color: Colors.redAccent,
                    ),
                    Text(
                      'Keep ID safe',
                      style: TextStyle(
                        fontSize: defaultRadius * 1.3,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultSpacing * 2),
                child: ElevatedButton(
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(160, 60)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    'Continue',
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
      ),
    );
  }
}
