import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import '../common_widgets/fade_in_image.dart';
import 'chat_opened.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
        itemCount: 20,
        padding: const EdgeInsets.symmetric(vertical: 0),

        // controller: scrollController1,
        itemBuilder: (context, index) {
          return  GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen()));
            },
            child: Container(
              color: ColorConstants.colorWhite,
              child: ListTile(
                title: Text("Name",maxLines:1,style:GoogleFonts.archivo(fontSize: 16,color: ColorConstants.colorBlack) ,),
                subtitle: Text("Hey!",maxLines:1,style:GoogleFonts.archivo(fontSize: 14,color: ColorConstants.color72777A) ,),
                leading:FadeInNetImage(
                    placeholderImage:IMAGE.dummyPic
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("2:23 pm",style:GoogleFonts.archivo(fontSize: 14,color: ColorConstants.color72777A) ,),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
