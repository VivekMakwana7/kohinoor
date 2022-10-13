import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'sizer.dart';

class BottomMenuButton extends StatelessWidget {
  const BottomMenuButton({
    Key? key,
    required this.bottomMenuSelected,
    this.svgImage,
  }) : super(key: key);

  final bool? bottomMenuSelected;
  final String? svgImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 45,
          width: 45,
          child: SvgPicture.asset(
            svgImage!,
            color: bottomMenuSelected!
                ? Colors.blue
                : Colors.grey.withOpacity(0.5),
          ),
        ),
        if (bottomMenuSelected!)
          Container(
            height: 5,
            width: contextWidth(context) * 0.06,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
            ),
          )
      ],
    );
  }
}
