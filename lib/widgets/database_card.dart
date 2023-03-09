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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Hello'),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Hello'),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: defaultSpacing,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text('Container'),
                      ),

                       Container(
                        child: Text('Container'),
                      ),
                    ],
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
