import 'package:flutter/material.dart';

import '../../constants.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57.6,
      height: 74.9,
      child: Column(
        children: [
          Container(
            width: 50.4,
            height: 50.4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff9E2692),
                  Color(0xffFAA958),
                ],
              ),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(1.8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(1.8),
              child: Image.asset(image),
            ),
          ),
          Spacer(),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
