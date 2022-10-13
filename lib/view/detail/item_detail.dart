import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kohinoor/helper/common/rounded_text.dart';
import 'package:kohinoor/helper/common/sizer.dart';
import 'package:kohinoor/helper/image_helper.dart';
import '../../helper/common/bg_image_widget.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  List<String> imageList = [
    ImageHelper.itemImage,
    ImageHelper.itemImage,
    ImageHelper.itemImage,
    ImageHelper.itemImage,
  ];

  List<String> listSize = ['s', 'm', 'l', 'xl', 'xxl', '3xl', '4xl'];

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
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  const Text(
                    'Apple Iphone 11 (64 GB)',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Container(
                              width: contextWidth(context),
                              margin: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0)),
                                  child: Image.asset(item, fit: BoxFit.cover)),
                            ),
                          )
                          .toList(),
                      carouselController: _controller,
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const RoundedText(
                            boxColor: Colors.blue,
                            isBorder: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 7),
                            text: 'Reyno',
                            textColor: Colors.blue,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on_rounded,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Shirt',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Apple iPhone 13 (64 GB)',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Lorem ipsum dolor sit consectetur adipisciufd fdyudegnwdv edcyed',
                        style: TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: SizedBox(
                        height: contextHeight(context) * 0.05,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: listSize.length,
                          itemBuilder: (context, index) {
                            return RoundedText(
                              text: listSize[index].toUpperCase(),
                              boxColor: Colors.blue,
                              textColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 7),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                                width: contextWidth(context) * 0.04);
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Febric',
                        style: TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Resham',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      height: 50,
                      width: contextWidth(context),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [
                          0.1,
                          0.9,
                        ],
                        colors: [
                          Color(0xFFFABC05),
                          Color(0xFFFFD455),
                        ],
                      )),
                      child: const Center(
                        child: Text(
                          'Mark As Sold',
                          style: TextStyle(color: Colors.white,fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
