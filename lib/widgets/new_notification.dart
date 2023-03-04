import 'package:apgar_app/constant/constant.dart';
import 'package:flutter/material.dart';

class NewNotification extends StatelessWidget {
  const NewNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: primaryDark,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    '06',
                    style: TextStyle(
                        color: secondaryLight,
                        fontWeight: FontWeight.bold,
                        fontSize: defaultSpacing * 1.3),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'An APGAR score of ID no ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: defaultRadius,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '06',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: defaultSpacing / 1.2,
                              color: primaryDark),
                        ),
                        TextSpan(
                          text: ' as been recorded',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: defaultRadius,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '20 mins ago',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Container(
                    width: 256,
                    height: 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 214, 212, 212)),
                  ),
                ],
              ),
              Icon(
                Icons.delete_sharp,
                color: Colors.red,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: defaultSpacing * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    '05',
                    style: TextStyle(
                        color: secondaryLight,
                        fontWeight: FontWeight.bold,
                        fontSize: defaultSpacing * 1.3),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'An APGAR score of ID no ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: defaultRadius,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '05',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: defaultSpacing / 1.2,
                              color: primaryDark),
                        ),
                        TextSpan(
                          text: ' as been recorded',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: defaultRadius,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '20 mins ago',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Container(
                    width: 256,
                    height: 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 214, 212, 212)),
                  ),
                ],
              ),
              Icon(
                Icons.delete_sharp,
                color: Colors.red,
                size: 25,
              )
            ],
          ),

           SizedBox(
            height: defaultSpacing * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: primaryDark,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    '04',
                    style: TextStyle(
                        color: secondaryLight,
                        fontWeight: FontWeight.bold,
                        fontSize: defaultSpacing * 1.3),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'An APGAR score of ID no ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: defaultRadius,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '04',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: defaultSpacing / 1.2,
                              color: primaryDark),
                        ),
                        TextSpan(
                          text: ' as been recorded',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: defaultRadius,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '20 mins ago',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Container(
                    width: 256,
                    height: 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 214, 212, 212)),
                  ),
                ],
              ),
              Icon(
                Icons.delete_sharp,
                color: Colors.red,
                size: 25,
              )
            ],
          ),

           SizedBox(
            height: defaultSpacing * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    '03',
                    style: TextStyle(
                        color: secondaryLight,
                        fontWeight: FontWeight.bold,
                        fontSize: defaultSpacing * 1.3),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'An APGAR score of ID no ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: defaultRadius,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '03',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: defaultSpacing / 1.2,
                              color: primaryDark),
                        ),
                        TextSpan(
                          text: ' as been recorded',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: defaultRadius,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '20 mins ago',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Container(
                    width: 256,
                    height: 1,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 214, 212, 212)),
                  ),
                ],
              ),
              Icon(
                Icons.delete_sharp,
                color: Colors.red,
                size: 25,
              )
            ],
          )
        ],
      ),
    );
  }
}
