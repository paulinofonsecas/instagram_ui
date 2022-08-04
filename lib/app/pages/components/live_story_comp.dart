import 'package:flutter/material.dart';

import '../../constants.dart';

class LiveStoryWidget extends StatelessWidget {
  const LiveStoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57.4,
      height: 74.9,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  width: 57.6,
                  height: 57.6,
                  decoration: BoxDecoration(
                    gradient: instaLiveGradent,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(1.8),
                  margin: EdgeInsets.only(bottom: defaultPadding / 3),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(1.8),
                    child: Image.asset('assets/images/ProfilePic1.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 21.6,
                    height: 12.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    padding: EdgeInsets.all(1.3),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.3),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffC7059A),
                            Color(0xffDD0E44),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'LIVE',
                          style: TextStyle(
                            fontSize: 6,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.7),
          Text(
            'Arthur',
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
