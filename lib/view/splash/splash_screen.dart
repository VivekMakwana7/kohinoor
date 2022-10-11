import 'package:flutter/material.dart';

import '../../helper/image_helper.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageHelper.bgImage), fit: BoxFit.cover),
        ),
        child: Center(
          child: Image(
            image: AssetImage(ImageHelper.logo),
          ),
        ),
      ),
    );
  }
}
