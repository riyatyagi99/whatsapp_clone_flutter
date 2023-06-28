import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widgets/fade_in_image.dart';
import '../utils/constants.dart';

class CallList extends StatelessWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: ColorConstants.color128C7E,
                  ),
                  child: Transform.rotate(
                  angle: 135 * pi / 180,
                  child: const Icon(Icons.link_outlined,color: Colors.white,size: 30,)),
                ),
                const SizedBox(width: 15,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Create call link",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("Share a link for your WhatsApp call",style:
                    TextStyle(color: ColorConstants.color72777A,fontSize: 15,fontWeight: FontWeight.normal),),

                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
            child: Text("Recent",style: TextStyle(fontSize: 16,color: ColorConstants.color72777A),),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                padding: const EdgeInsets.symmetric(vertical: 0),
                // controller: scrollController1,
                itemBuilder: (context, index) {
                  return Container(
                    color: ColorConstants.colorWhite,
                    child: ListTile(
                      title: Text("Name",maxLines:1,style:GoogleFonts.archivo(fontSize: 16,color: ColorConstants.colorBlack) ,),
                      subtitle: Row(
                        children: [
                          const Icon(Icons.call_made_outlined),
                          Text("Today, 2:22pm",maxLines:1,style:GoogleFonts.archivo(fontSize: 14,color: ColorConstants.color72777A) ,),
                        ],
                      ),
                      leading:SizedBox(
                        height: 45,
                        width: 45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child:FadeInNetImage(
                              placeholderImage:IMAGE.dummyPic
                          ),
                        ),
                      ),
                      trailing:const Icon(Icons.phone,size: 20,),
                    ),
                  );
                }),
          ),
        ],
      );
  }
}
