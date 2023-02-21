import 'package:flutter/material.dart';

import 'package:apgar_app/constant/constant.dart';
import 'package:apgar_app/pages/retrieve_id.dart';
import 'package:apgar_app/pages/signup.dart';
import 'package:flutter/material.dart';

class RetrieveId extends StatefulWidget {
  const RetrieveId({super.key});

  @override
  State<RetrieveId> createState() => _RetrieveIdState();
}

List<String> items = ['Abuja', 'Kwara', 'Ondo', 'Kaduna'];

String selectedItem = 'Abuja';

final _addressTextController = TextEditingController();

class _RetrieveIdState extends State<RetrieveId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: secondaryLight),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: defaultSpacing * 4,
            ),
            Container(
              width: 310,
              height: 400,
              child: Column(
                children: [
                  SizedBox(
                    height: defaultSpacing,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.arrow_back_ios_new_outlined),
                        SizedBox(
                          width: defaultSpacing * 5,
                        ),
                        Text(
                          'Retrieve ID',
                          style: TextStyle(
                              fontSize: defaultSpacing * 1.5,
                              fontWeight: FontWeight.w700,
                              color: primaryDark),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: defaultSpacing * 5,
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

                  SizedBox(height: defaultSpacing * 2,),

                  Container(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(defaultRadius / 2)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      onChanged: (item) => setState(() => selectedItem = item!),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                value: item,
                              ))
                          .toList(),
                      alignment: Alignment.centerLeft,
                      value: selectedItem,
                    ),
                  ),
                ),
                Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(defaultRadius / 2)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'City',
                        style: TextStyle(
                            fontSize: defaultRadius * 1.3, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
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
                        MaterialPageRoute(builder: (context) => RetrieveId()),
                      );
                    },
                    child: Text(
                      'Sign in',
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
              padding: const EdgeInsets.all(defaultSpacing * 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(300, 70)),
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
