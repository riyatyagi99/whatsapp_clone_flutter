import 'dart:math';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController message = TextEditingController();

  bool msgLength=false;
   bool chat=true;
  @override
  Widget build(BuildContext context) {
  Size size=  MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.color128C7E,
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: true,
        titleSpacing: -15,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  IMAGE.dummyPic,
                  width: 35,
                  height: 35,
                  fit: BoxFit.fill,
                )),
            const SizedBox(width: 8),
            SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: Text(
                  "Riya Tyagi",
                  maxLines: 1,
                ))
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.video_camera_front_rounded)),
              IconButton(onPressed: () {}, icon: Icon(Icons.call)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          chat==false? Expanded(
            child: Center(
                child: Text("No Chats", style: TextStyle(fontSize: 20))),
          ):
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder:  (context, index) {
              return index%2==0 ? Align(
                  alignment: Alignment.centerLeft,
                  child: Container(color: Colors.lime,height: 30,width:size.width/2 ,margin:EdgeInsets.symmetric(vertical: 20),)):
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(color: Colors.red,height: 30,width:size.width/2 ,margin:EdgeInsets.symmetric(vertical: 20),));

            }),
          ),
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Expanded(child: roundedContainer()),
              const SizedBox(
                width: 5,
              ),
                GestureDetector(
                onTap: () {},
                child:  CircleAvatar(
                  backgroundColor: ColorConstants.color128C7E,
                  child: Icon(msgLength==true?Icons.send:Icons.mic,color: Colors.white,
                    size: 20,),
                ),
              )
              /* :
              Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.only(right: 5,left: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: ColorConstants.color128C7E,
                ),
                child: const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 20,
                    )),
              ),*/

            ],
          ),

          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }


  Widget roundedContainer (){
   return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 8.0),
          Icon(Icons.insert_emoticon,
              size: 30.0, color: ColorConstants.color72777A),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              minLines: 1,
              controller: message,
              maxLines: 30,
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'Type a message',
              ),
            ),
          ),
          Transform.rotate(
            angle: 325 * pi / 180,
            child: Icon(Icons.attach_file,
                size: 30.0, color: ColorConstants.color72777A),
          ),
          SizedBox(width: 8.0),
          Icon(Icons.camera_alt, size: 30.0, color: ColorConstants.color72777A),
          SizedBox(width: 8.0),
        ],
      ),
    );
  }


}
