import 'package:flutter/material.dart';
import 'package:kohinoor/helper/common/sizer.dart';

import '../image_helper.dart';

class BgImageWidget extends StatelessWidget {

  final Widget? child;
  const BgImageWidget({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: contextHeight(context),
      width: contextWidth(context),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImageHelper.bgImage), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}