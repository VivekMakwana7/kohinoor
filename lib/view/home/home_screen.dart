import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kohinoor/view/contact/contact.dart';
import 'package:kohinoor/view/home/item_list_widget.dart';
import 'package:kohinoor/view/search/search_screen.dart';

import '../../helper/common/bottom_menu_button.dart';
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
    const ItemList(),
    const SearchScreen(),
    ContactPage()
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
                  onTap: () {
                    setState(() {
                      bottomMenuSelected = i;
                    });
                  },
                  child: BottomMenuButton(
                      svgImage: bottomMenuList[i],
                      bottomMenuSelected: i== bottomMenuSelected),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
