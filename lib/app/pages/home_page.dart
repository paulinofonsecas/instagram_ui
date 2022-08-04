import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'components/create_story_comp.dart';
import 'components/live_story_comp.dart';
import 'components/story_comp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderWidget(),
          StoryComp(),
          Divider(
            color: Color(0xffB1A9A9),
          ),
        ],
      ),
    );
  }
}

class StoryComp extends StatelessWidget {
  const StoryComp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 10,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CreateStoryWidget(),
            SizedBox(width: defaultPadding),
            LiveStoryWidget(),
            SizedBox(width: defaultPadding),
            StoryWidget(
              image: 'assets/images/ProfilePic-1.png',
              name: 'Arneo',
            ),
            SizedBox(width: defaultPadding),
            StoryWidget(
              image: 'assets/images/ProfilePic-2.png',
              name: 'Nicolas',
            ),
            SizedBox(width: defaultPadding),
            StoryWidget(
              image: 'assets/images/ProfilePic-3.png',
              name: 'barbie_gir',
            ),
            SizedBox(width: defaultPadding),
            StoryWidget(
              image: 'assets/images/ProfilePic-0.png',
              name: 'Sandra',
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 5,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/instagram_logo.svg',
            width: 95.04,
            height: 26.96,
          ),
          const Spacer(),
          Row(
            children: [
              SvgPicture.asset('assets/icons/Add_Icon_Filled.svg'),
              const SizedBox(width: 16),
              SvgPicture.asset('assets/icons/Heart.svg'),
              const SizedBox(width: 16),
              SvgPicture.asset('assets/icons/Share.svg'),
            ],
          ),
        ],
      ),
    );
  }
}
