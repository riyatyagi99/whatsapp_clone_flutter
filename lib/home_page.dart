import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';

import 'common_widgets/fade_in_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text("WhatsApp",style: TextStyleConstants.white16,),
                backgroundColor: Colors.lightGreen[800],
                centerTitle: false,
                pinned: true,
                floating: true,
                actions: [
                  Row(
                    children:  const [
                      Icon(Icons.camera_alt_outlined),
                      SizedBox(width:15),
                      Icon(Icons.search),
                      SizedBox(width:15),
                      Icon(Icons.more_vert_outlined),
                      SizedBox(width:15),
                    ],
                  )
                ],
                bottom: TabBar(
                  onTap: (index){

                  },
                    labelPadding: const EdgeInsets.all(
                      0,
                    ),
                    controller: tabController,
                    indicatorColor: ColorConstants.colorWhite,
                    labelColor: ColorConstants.colorWhite,
                    indicatorSize:TabBarIndicatorSize.tab ,
                    indicatorWeight: 3.5,
                    tabs: const [
                      Tab(
                        child: Text("Chats", style: TextStyle(fontSize: 18),),
                      ),
                      Tab(
                        child: Text("Status",style: TextStyle(fontSize: 18),),
                      ),
                      Tab(
                        child: Text("Calls",style: TextStyle(fontSize: 18),),
                      ),
                    ]),
              ),
            ];
          },
          body: TabBarView(
            controller: tabController,
            //physics: const NeverScrollableScrollPhysics(),
            children: [
              ListView.builder(
                  itemCount: 20,
                  padding: const EdgeInsets.symmetric(vertical: 0),

                  // controller: scrollController1,
                  itemBuilder: (context, index) {

                    return chatsModule();
                  }),
              Container(
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
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                    child: Row(
                      children: [
                        FadeInNetImage(
                            placeholderImage:IMAGE.dummyPic
                        ),
                        const SizedBox(width: 15,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Cretae Link",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Tap to invite people",style:
                            TextStyle(color: ColorConstants.color72777A,fontSize: 15,fontWeight: FontWeight.normal),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 20,
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        // controller: scrollController1,
                        itemBuilder: (context, index) {
                          return callsModule();
                        }),
                  ),
                ],
              ),
            ],
          ),

        )
    );
  }





  Widget chatsModule(){
    return  Container(
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

  Widget callsModule(){
    return  Container(
      color: ColorConstants.colorWhite,
      child: ListTile(
        title: Text("Name",maxLines:1,style:GoogleFonts.archivo(fontSize: 16,color: ColorConstants.colorBlack) ,),
        subtitle: Row(
          children: [
            Icon(Icons.call_made_outlined),
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
  }
}
