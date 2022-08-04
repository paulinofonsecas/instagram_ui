import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram UI',
      theme: ThemeData(
        fontFamily: 'SF',
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
