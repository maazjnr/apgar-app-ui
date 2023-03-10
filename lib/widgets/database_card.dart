import 'package:apgar_app/constant/constant.dart';
import 'package:flutter/material.dart';

class DataBaseCard extends StatelessWidget {
  const DataBaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultSpacing * 1.3),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(defaultSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '004',
                                style: TextStyle(
                                    fontSize: defaultSpacing * 1.5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'ID',
                                style: TextStyle(
                                    fontSize: defaultSpacing,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: defaultSpacing,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              '23/10/2020',
                              style: TextStyle(
                                  fontSize: defaultSpacing,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            ),
                          ),
                          Container(
                            child: Text(
                              '12:23am',
                              style: TextStyle(
                                  fontSize: defaultSpacing,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: defaultRadius / 1.5,),
                  Container(
                    width: 70,
                    height: 70,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius / 1.5),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/baby1.png', 
                        ),
                      ),
                    ),
                    
                  )
                ],
              ),
            ), // Your content here
          ),
        ],
      ),
    );
  }
}
