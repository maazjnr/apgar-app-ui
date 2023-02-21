import 'package:apgar_app/constant/constant.dart';
import 'package:apgar_app/pages/retrieve_id.dart';
import 'package:apgar_app/pages/signup.dart';
import 'package:flutter/material.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

final _addressTextController = TextEditingController();

class _SignPageState extends State<SignPage> {
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
              child: Column(
                children: [
                  SizedBox(
                    height: defaultSpacing,
                  ),
                  Image.asset(
                    'assets/image2.png',
                    width: 300,
                  ),
                  SizedBox(
                    height: defaultSpacing * 2,
                  ),
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                        fontSize: defaultSpacing * 1.5,
                        fontWeight: FontWeight.w700,
                        color: primaryDark),
                  ),
                  SizedBox(
                    height: defaultSpacing * 3,
                  ),
                  TextField(
                    controller: _addressTextController,
                    decoration: InputDecoration(
                      hintText: 'Hospital Name',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: defaultSpacing,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(defaultSpacing / 2.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: defaultSpacing * 1,
                  ),
                  SizedBox(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RetrieveId() ),
                      );
                    },
                    child: Text(
                      'Forgot ID ?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: defaultSpacing,
                        fontWeight: FontWeight.w400,
                        color: primaryDark,
                      ),
                    ),
                  )),
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
    ));
  }
}
