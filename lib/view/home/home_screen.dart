import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kohinoor/helper/common/bg_image_widget.dart';
import 'package:kohinoor/helper/common/rounded_text.dart';
import 'package:kohinoor/helper/common/sizer.dart';
import 'package:kohinoor/helper/string_helper.dart';
import 'package:kohinoor/view/detail/item_detail.dart';
import 'package:kohinoor/view/home/item_list_widget.dart';
import 'package:kohinoor/view/search/search_screen.dart';

import '../../helper/image_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List bottomMenuList = [
    ImageHelper.homeSvg,
    ImageHelper.swipeSvg,
    ImageHelper.moreSvg
  ];
  int bottomMenuSelected = 0;

  List<Widget> listOfWidget = [
    ItemList(),
    SearchScreen(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: listOfWidget[bottomMenuSelected],
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < bottomMenuList.length; i++)
                InkWell(
                  onTap: (){
                    setState(() {
                      bottomMenuSelected = i;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 45,
                        child: SvgPicture.asset(
                          bottomMenuList[i],
                          color: bottomMenuSelected == i
                              ? Colors.blue
                              : Colors.grey.withOpacity(0.5),
                        ),
                      ),
                      if (bottomMenuSelected == i)
                        Container(
                          height: 5,
                          width: contextWidth(context) * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
