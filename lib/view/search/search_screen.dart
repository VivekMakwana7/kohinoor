import 'package:flutter/material.dart';
import 'package:kohinoor/helper/common/bg_image_widget.dart';
import 'package:kohinoor/helper/common/rounded_body.dart';

import '../../helper/common/list_detail_item.dart';
import '../../helper/common/rounded_text.dart';
import '../../helper/common/sizer.dart';
import '../../helper/string_helper.dart';
import '../detail/item_detail.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return BgImageWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heightBox(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              StringHelper.search,
              style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          heightBox(12),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.only(left: 20, top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          heightBox(15),
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
                  child: const DetailListItem(),
                );
              },
              separatorBuilder: (context, index) {
                return heightBox(20);
              },
            ),
          ),
        ],
      ),
    );
  }
}
