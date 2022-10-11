import 'package:flutter/material.dart';
import 'package:kohinoor/view/home/home_screen.dart';

import '../../helper/common/bg_image_widget.dart';
import '../../helper/image_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgImageWidget(
        child: Center(
          child: Image(
            image: AssetImage(ImageHelper.logo),
          ),
        ),
      ),
    );
  }
}
