import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorConstants{
  static const color6104FF = Color(0xff6104FF);
  static const color75e54 = Color(0xff075e54);
  static const color128C7E=Color(0xFF128C7E);
  static const color40CBFC= Color(0xff40CBFC);
  static const colorE3E5E5 = Color(0xffE3E5E5);
  static const color2867B2 = Color(0xffE2867B2);
  static const color0078F = Color(0xff0078F);
  static const colorCDCFD0 = Color(0xffCDCFD0);
  static const colorBlack = Color(0xFF000000);
  static const colorWhite = Color(0xffffffff);
  static const color5ED18D = Color(0xff5ED18D);
  static const color0078FF= Color(0xff0078FF);
  static const colorFF0000= Color(0xffFF0000);
  static const color72777A= Color(0xff72777A);
  static const colorE7E7FF= Color(0xffE7E7FF);
  static const color979C9E= Color(0xff979C9E);
  static const colorF2F4F5= Color(0xffF2F4F5);
  static const colorD9D9D9= Color(0xffD9D9D9);
  static const colorF9F9F9= Color(0xffF9F9F9);
  static const color2A2634= Color(0xff2A2634);
  static const color6C7072= Color(0xff6C7072);

}

class TextStyleConstants {
  static var white16 =  GoogleFonts.cabin(color: ColorConstants.colorWhite,fontSize: 19);

}

class IMAGE{
  static String dummyPic = 'assets/images/dummyProfilePic.png';


}


class Fonts {
  static String interMedium = "InterMedium";
}


class APIKEY {

  //base url for uploading imagessss
  static const String baseURL ='https://test.curd.network/api/' ;  // devUrl---'http://dev.curd.network:3000/api/';

  static const String username = 'username';
  static const String password = 'password';
}


class AppConstants {

  static const int lengthLimit = 50;
  static String linkedInClientId = "77e16sngc5trod";
  static String linkedInClientSecret = "B53ZYgoNbIRbcv8m";
  static String linkedInRedirectUrl = "https://www.youtube.com/callback";
}