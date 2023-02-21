import 'package:apgar_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpTextField extends StatefulWidget {
  const SignUpTextField({super.key});

  @override
  State<SignUpTextField> createState() => _SignUpTextFieldState();
}

final _hospitalTextController = TextEditingController();
final _addressTextController = TextEditingController();

List<String> items = ['Abuja', 'Kwara', 'Ondo', 'Kaduna'];

String selectedItem = 'Abuja';

class _SignUpTextFieldState extends State<SignUpTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultSpacing * 2),
      child: SafeArea(
          child: Column(
        children: [
          TextField(
            controller: _hospitalTextController,
            decoration: InputDecoration(
              hintText: 'Hospital name',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: defaultSpacing,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultSpacing / 2.5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultSpacing * 1.6),
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
          TextField(
            controller: _addressTextController,
            decoration: InputDecoration(
              hintText: 'Address',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: defaultSpacing,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultSpacing / 2.5),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
