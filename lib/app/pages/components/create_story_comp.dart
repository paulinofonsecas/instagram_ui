import 'package:flutter/material.dart';

class CreateStoryWidget extends StatelessWidget {
  const CreateStoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            width: 55.4,
            height: 57.6,
            child: Stack(
              children: [
                Container(
                  width: 50.4,
                  height: 50.4,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/ProfilePic-0.png'),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xff0094F5),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 12,
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
            'Create Story',
            style: TextStyle(
              fontSize: 11,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
