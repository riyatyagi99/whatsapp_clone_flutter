import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/status/status_list.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';
import 'calls/call_list.dart';
import 'chat/chat_list.dart';



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
                backgroundColor: ColorConstants.color128C7E,
                centerTitle: false,
                pinned: true,
                floating: true,
                actions: [
                  Row(
                    children:   [
                      IconButton(
                          onPressed: () {  },
                      icon: Icon(Icons.camera_alt_outlined)),
                      IconButton(
                          onPressed: () {  },
                          icon: Icon(Icons.search)),
                      IconButton(
                          onPressed: () {  },
                          icon: Icon(Icons.more_vert_outlined)),
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
            children: const [
              ChatList(),
              StatusList(),
              CallList()

            ],
          ),

        )
    );
  }

}
