import 'package:flutter/cupertino.dart';

contextHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}

contextWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}

SizedBox heightBox(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox widthBox(double width) {
  return SizedBox(
    width: width,
  );
}