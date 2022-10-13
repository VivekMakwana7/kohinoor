import 'dart:ui';

import 'package:flutter/material.dart';

import '../image_helper.dart';
import 'sizer.dart';

class ItemImageWidget extends StatelessWidget {

  final List? imageList;

  const ItemImageWidget({
    Key? key,
    this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: contextHeight(context) * 0.3,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ImageHelper.itemImage))),
            ),
          ),
          widthBox(10),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(ImageHelper.itemImage))),
                  ),
                ),
                heightBox(10),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(ImageHelper.itemImage),
                          ),
                        ),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          '+10',
                          style: TextStyle(color: Colors.red, fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
