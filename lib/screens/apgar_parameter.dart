import 'package:apgar_app/screens/apgarscore.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../pages/signup.dart';

class ApgarParameter extends StatefulWidget {
  const ApgarParameter({super.key});

  @override
  State<ApgarParameter> createState() => _ApgarParameterState();
}

class _ApgarParameterState extends State<ApgarParameter> {
  List<String> items = ['Abuja', 'Kwara', 'Ondo', 'Kaduna'];

  String selectedItem = 'Select Options';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(color: primaryDark),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultSpacing),
            child: Stack(
              children: [
                Positioned(
                  top: 86,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: secondaryLight,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'APGAR parameters',
                        style: TextStyle(
                            fontSize: defaultSpacing * 1.2,
                            fontWeight: FontWeight.bold,
                            color: secondaryLight),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: defaultSpacing * 3, horizontal: defaultRadius * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Activity',
                style: TextStyle(
                    fontSize: defaultRadius * 1.3, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: double.infinity,
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
                                  'Select Options',
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
                  ),
                ),
              ),
              SizedBox(
                height: defaultSpacing,
              ),
              Text(
                'Pulse',
                style: TextStyle(
                    fontSize: defaultRadius * 1.3, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: double.infinity,
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
                                  'Select Options',
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
                  ),
                ),
              ),
              SizedBox(
                height: defaultSpacing,
              ),
              Text(
                'Grimace',
                style: TextStyle(
                    fontSize: defaultRadius * 1.3, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: double.infinity,
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
                                  'Select Options',
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
                  ),
                ),
              ),
              SizedBox(
                height: defaultSpacing,
              ),
              Text(
                'Appearance',
                style: TextStyle(
                    fontSize: defaultRadius * 1.3, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: double.infinity,
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
                                  'Select Options',
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
                  ),
                ),
              ),
              SizedBox(
                height: defaultSpacing * 2,
              ),
              Container(
                width: double.infinity,
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
                      MaterialPageRoute(builder: (context) => ApgarScore()),
                    );
                  },
                  child: Text(
                    'Take Score',
                    style: TextStyle(
                        fontSize: defaultSpacing * 1.1,
                        fontWeight: FontWeight.w400,
                        color: secondaryLight),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
