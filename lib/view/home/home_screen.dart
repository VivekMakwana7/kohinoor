import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kohinoor/helper/common/bg_image_widget.dart';
import 'package:kohinoor/helper/common/rounded_text.dart';
import 'package:kohinoor/helper/common/sizer.dart';
import 'package:kohinoor/helper/string_helper.dart';

import '../../helper/image_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categoryList = ['All', 'Jeans', 'Shirt', 'Sports', 'Backpack'];
  List bottomMenuList = [
    ImageHelper.homeSvg,
    ImageHelper.swipeSvg,
    ImageHelper.moreSvg
  ];

  int selectedCategory = 0;
  int bottomMenuSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BgImageWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                StringHelper.kohinoor,
                style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
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
                      boxColor: selectedCategory == index ? Colors.white : Colors.transparent,
                      textColor: selectedCategory == index
                          ? Colors.black
                          : Colors.white,
                      padding: selectedCategory == index
                          ? const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 12)
                          : EdgeInsets.zero,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: contextWidth(context) * 0.05);
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView.separated(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
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
                          const ItemImageWidget(),
                          const SizedBox(
                            height: 10,
                          ),
                          Container (
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    RoundedText(
                                      isBorder: true,
                                      textColor: Colors.blue,
                                      text: 'Reyno',
                                      boxColor: Colors.blue,
                                      padding: EdgeInsets.symmetric(horizontal: 18,vertical: 7),
                                    ),
                                    Text(
                                      '10 Oct,2022 10:03 PM',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 21,
                                ),
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
                                const SizedBox(
                                  height: 10,
                                ),
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
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
              Column(
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
          ],
        ),
      ),
    );
  }
}

class ItemImageWidget extends StatelessWidget {
  const ItemImageWidget({
    Key? key,
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
          const SizedBox(
            width: 10,
          ),
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
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(ImageHelper.itemImage))),
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
