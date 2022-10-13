import 'package:flutter/material.dart';
import 'package:kohinoor/helper/common/bg_image_widget.dart';
import 'package:kohinoor/helper/common/header_text.dart';
import 'package:kohinoor/helper/common/rounded_body.dart';
import 'package:kohinoor/helper/common/sizer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BgImageWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox(20),
            const HeaderText(header: 'Contact Page'),
            heightBox(10),
            const RoundedBody(
              child: Center(
                child: Text('Contact Page'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
