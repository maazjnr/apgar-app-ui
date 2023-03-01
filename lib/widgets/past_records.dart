import 'package:apgar_app/data/pastrecordsdata.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class PastRecords extends StatelessWidget {
  const PastRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: defaultSpacing,
          ),
          Text(
            'Past Records',
            style: TextStyle(
              fontSize: defaultSpacing * 1.4,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 101, 101, 101),
            ),
          ),
          SizedBox(
            height: defaultSpacing,
          ),
          SingleChildScrollView (
            child: Row(
              
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultSpacing),
                    image: DecorationImage(
                        image: AssetImage('assets/baby1.png'), fit: BoxFit.cover),
                  ),
                  width: 180,
                  height: 170,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: defaultSpacing * 7, top: defaultSpacing / 1.8),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 227, 226, 226),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Text(
                                  pastRecordData[0].idText,
                                  style: TextStyle(
                                      fontSize: defaultSpacing,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  pastRecordData[0].idScore,
                                  style: TextStyle(
                                      fontSize: defaultSpacing,
                                      fontWeight: FontWeight.bold,
                                      color: primaryDark),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 227, 226, 226),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    pastRecordData[0].scoreText,
                                    style: TextStyle(
                                        fontSize: defaultSpacing * 1.2,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    pastRecordData[0].numScored,
                                    style: TextStyle(
                                        fontSize: defaultSpacing,
                                        fontWeight: FontWeight.bold,
                                        color: primaryDark),
                                  ),
                                ],
                              ),
                              Icon(Icons.more_vert_outlined)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
          
                SizedBox(width: 20,),
          
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultSpacing),
                    image: DecorationImage(
                        image: AssetImage('assets/baby1.png'), fit: BoxFit.cover),
                  ),
                  width: 180,
                  height: 170,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: defaultSpacing * 7, top: defaultSpacing / 1.8),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 227, 226, 226),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Text(
                                  pastRecordData[0].idText,
                                  style: TextStyle(
                                      fontSize: defaultSpacing,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  pastRecordData[0].idScore,
                                  style: TextStyle(
                                      fontSize: defaultSpacing,
                                      fontWeight: FontWeight.bold,
                                      color: primaryDark),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 227, 226, 226),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    pastRecordData[0].scoreText,
                                    style: TextStyle(
                                        fontSize: defaultSpacing * 1.2,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    pastRecordData[0].numScored,
                                    style: TextStyle(
                                        fontSize: defaultSpacing,
                                        fontWeight: FontWeight.bold,
                                        color: primaryDark),
                                  ),
                                ],
                              ),
                              Icon(Icons.more_vert_outlined)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultSpacing,
          ),
        ],
      ),
    );
  }
}
