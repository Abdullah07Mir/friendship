import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Message {
  final String sender;
  final String text;
  final bool isMe;
  final DateTime time;

  Message({required this.sender, required this.text, required this.isMe, required this.time});
}

class MessagesScreen extends StatefulWidget {
  final String name;

  MessagesScreen({required this.name});

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final List<Message> _messages = [
    Message(sender: "John Doe", text: "Hi Cassiel Would you be available for a coffee next week?",
        isMe: false, time: DateTime.now().subtract(Duration(minutes: 10))),
    Message(sender: "Me", text: "Hi Samuel Yes with pleasure! Do you prefer when? ",
        isMe: true, time: DateTime.now().subtract(Duration(minutes: 8))),
    Message(sender: "john doe", text: "Hmm,,, Tuesday night, around 19 hours is good for you?",
        isMe: false, time: DateTime.now().subtract(Duration(minutes: 7))),
    Message(sender: "Me", text: "By the way, did not you see my dog! I present to you Samuel!",
        isMe: true, time: DateTime.now().subtract(Duration(minutes: 5))),
  ];

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(

                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Icon(Icons.arrow_back_ios_new)),
                    SizedBox(width: 10.w,),
                    CircleAvatar(radius: 30.r,
                      child: Image.asset('assets/images/Ellipse 3.png',fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 10.w,),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
                      Text('Online',style: TextStyle(color: Colors.grey),)
                    ],),
                    SizedBox(width: MediaQuery.of(context).size.width/2.5),
                    SvgPicture.asset('assets/icons/call.svg',color: Colors.grey,)
                  ],
                ),
              ),
            ),
        Expanded(
        child: ListView.builder(
        reverse: false,
          itemCount: _messages.length,
          itemBuilder: (BuildContext context, int index) {
            final Message message = _messages[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                          maxHeight: double.infinity,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: message.isMe ? Colors.blue : Color.fromRGBO(235, 236, 241, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: message.isMe ? Radius.circular(20.0) : Radius.circular(0.0),
                              bottomRight: message.isMe ? Radius.circular(0.0) : Radius.circular(20.0),
                            ),
                          ),
                          padding: EdgeInsets.all(20.h),
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            message.text,
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: message.isMe ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '${message.time.hour}:${message.time.minute}',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      Container(
        height: 100.h,
      decoration: BoxDecoration(
      color: Theme.of(context).cardColor,
      ),
      child: Row(
      children: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/emoji.svg")),
      Expanded(
      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
      controller: _textController,
      decoration: InputDecoration(
      hintText: "Type a message...",
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      )))),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send),
          color: Colors.blue,
        ),
      ],),),],),),
    );}}
