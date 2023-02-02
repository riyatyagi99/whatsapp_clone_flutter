import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FadeInNetImage extends StatelessWidget {
  String? placeholderImage;
  String? netImage;
  BoxFit? fit;
  FadeInNetImage({Key? key,this.netImage,this.placeholderImage,this.fit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*double w = 60;
    double h = 60;
    return SizedBox(
      width: w,
      height: h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: CachedNetworkImage(
          imageUrl: netImage??"",
          fit: BoxFit.fill,
          placeholder: (context, url) => Container(
            width: 60,
            height: 60,
            child: Image.asset(
              "assets/images/dummyProfilePic.png",
              width: w,
              height: h,
            ),
          ),
          errorWidget: (context, url, error) => Container(
            width: w,
            height: h,
            child: Image.asset(
              "assets/images/dummyProfilePic.png",
              width: w,
              height: h,
            ),
          ),
        ),
      ),
    );*/
    return SizedBox(
        height: 45,
        width: 45,
        child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
      child: CachedNetworkImage(
        imageUrl: netImage??"",
        fit: fit ?? BoxFit.cover,
        placeholder: (context, url) => Container(
          child: Image.asset(
            placeholderImage??"",
            fit: BoxFit.fill,
          ),
        ),
        errorWidget: (context, url, error) => Container(
          child: Image.asset(
            "assets/images/dummyProfilePic.png",
          ),
        ),
      ),
        )
    );
  }
}
