import 'package:flutter/material.dart';
import 'package:kohinoor/helper/string_helper.dart';

import 'image_detail.dart';
import 'rounded_text.dart';
import 'sizer.dart';

class DetailListItem extends StatelessWidget {

  const DetailListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: contextWidth(context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ItemImageWidget(imageList: []),
          heightBox(10),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedText(
                      isBorder: true,
                      textColor: Colors.blue,
                      text: StringHelper.reyno,
                      boxColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 7),
                    ),
                    const Text(
                      '10 Oct,2022 10:03 PM',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                heightBox(21),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Apple iPhone 13 (64 GB)',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.orange,
                        ),
                        Text(
                          'Shirt',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                heightBox(10),
                const Text(
                  'Lorem ipsum dolor sit consectetur adipisciufd fdyudegnwdv edcyed',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color(0xFFA3A3A3),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
