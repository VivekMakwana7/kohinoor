import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kohinoor/helper/common/list_detail_item.dart';

import '../../helper/common/bg_image_widget.dart';
import '../../helper/common/header_text.dart';
import '../../helper/common/rounded_body.dart';
import '../../helper/common/rounded_text.dart';
import '../../helper/common/sizer.dart';
import '../../helper/string_helper.dart';
import '../detail/item_detail.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<String> categoryList = ['All', 'Jeans', 'Shirt', 'Sports', 'Backpack'];
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return BgImageWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heightBox(20),
          HeaderText(header: StringHelper.kohinoor),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: contextHeight(context) * 0.05,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return RoundedText(
                    text: categoryList[index].toUpperCase(),
                    boxColor: selectedCategory == index
                        ? Colors.white
                        : Colors.transparent,
                    textColor:
                        selectedCategory == index ? Colors.black : Colors.white,
                    padding: selectedCategory == index
                        ? const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 12)
                        : EdgeInsets.zero,
                  );
                },
                separatorBuilder: (context, index) {
                  return widthBox(contextWidth(context) * 0.05);
                },
              ),
            ),
          ),
          RoundedBody(
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemDetail(),
                        ));
                  },
                  child: DetailListItem(),
                );
              },
              separatorBuilder: (context, index) {
                return heightBox(10);
              },
            ),
          )
        ],
      ),
    );
  }
}
