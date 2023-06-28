import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widgets/fade_in_image.dart';
import '../utils/constants.dart';

class StatusList extends StatelessWidget {
  const StatusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                    child: Row(
                      children: [
                        Stack(
                            clipBehavior: Clip.none,
                            children:[
                              FadeInNetImage(
                                  placeholderImage:IMAGE.dummyPic
                              ),
                              Positioned(
                                top: 20,
                                right: -2,
                                child: Container(
                                  height: 23,
                                  width: 23,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(40))
                                  ),
                                  child: Icon(Icons.add_circle_rounded,color: Colors.green,size: 25,),
                                ),
                              )
                            ]
                        ),
                        const SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("My Status",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Tap to add status update",style:
                            TextStyle(color: ColorConstants.color72777A,fontSize: 15,fontWeight: FontWeight.normal),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                        child: Text("Recent updates",style: TextStyle(fontSize: 16,color: ColorConstants.color72777A),),
                      ),
                      ListView.builder(
                          itemCount: 4,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          shrinkWrap: true,
                          // controller: scrollController1,
                          itemBuilder: (context, index) {
                            return statusModule();
                          })
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                        child: Text("Viewed updates",style: TextStyle(fontSize: 16,color: ColorConstants.color72777A),),
                      ),
                      ListView.builder(
                          itemCount: 4,
                          physics: NeverScrollableScrollPhysics(),

                          padding: const EdgeInsets.symmetric(vertical: 0),
                          shrinkWrap: true,
                          // controller: scrollController1,
                          itemBuilder: (context, index) {
                            return statusModule();
                          })
                    ],
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 80,),
            ),

            //commentSection(size)
          ],
        )
    );
  }
  Widget statusModule(){
    return  Column(
      children: [
        Container(
          color: ColorConstants.colorWhite,
          child: ListTile(
            title: Text("Name",maxLines:1,style:GoogleFonts.archivo(fontSize: 16,color: ColorConstants.colorBlack) ,),
            subtitle: Text("Hey!",maxLines:1,style:GoogleFonts.archivo(fontSize: 14,color: ColorConstants.color72777A) ,),
            leading:FadeInNetImage(
                placeholderImage:IMAGE.dummyPic
            ),
          ),
        ),
      ],
    );
  }

}
