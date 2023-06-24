import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Model/Chat_Model.dart';
import '../Subscriptions.dart';
import 'Messages_Screen.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left:20.w,right: 20.w,top: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(' '),
                  Text("Inbox",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.sp),),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  Subscription()));
                    },
                      child: SvgPicture.asset("assets/icons/Premium.svg")),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Divider(thickness: 2,),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Matches",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21.sp),),

                  Text("View all",style: TextStyle(decoration:TextDecoration.underline,
                      fontWeight: FontWeight.w600,fontSize: 21.sp,color: const Color.fromRGBO(68, 127, 231, 1)),),
                ],
              ),
            ),
             SizedBox(height: 15.h,),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  MessagesScreen(name: 'Samuel',)));
                },
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    Chat chat = chats[index];
                    if (index == 2) {
                      return Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Your Chat",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21.sp),),
                                const Text(' ', style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),

                          SizedBox(height: 10),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(chat.profileImageUrl),
                            ),
                            title: Row(
                              children: [
                                Expanded(child: Text(chat.name)),
                                Text(chat.time,style: TextStyle(fontSize: 10),),
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    chat.message,
                                    overflow: TextOverflow.ellipsis,
                                  ),),
                                SizedBox(width: 10,),
                                chat.unseenCount > 0
                                    ? Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xffBA0C2F),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    chat.unseenCount.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                                    : SizedBox.shrink(),



                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(chat.profileImageUrl),
                        ),
                        title: Row(
                          children: [
                            Expanded(child: Text(chat.name)),
                            Text(chat.time,style: TextStyle(fontSize: 10),),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            Expanded(
                              child: Text(
                                chat.message,
                                overflow: TextOverflow.ellipsis,
                              ),),
                            SizedBox(width: 10,),
                            chat.unseenCount > 0
                                ? Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffBA0C2F),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                chat.unseenCount.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                                : SizedBox.shrink(),



                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}