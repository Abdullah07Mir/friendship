import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendship/screens/Home_Screen/Widgets/Create_Post.dart';
import 'package:friendship/screens/Subscriptions.dart';
import 'package:friendship/screens/Home_Screen/Widgets/Add_to_Story.dart';
import 'package:friendship/screens/Home_Screen/Widgets/story_view.dart';
import 'package:story/story_page_view.dart';
import '../../Model/Home_card_Model.dart';
import '../../Model/post_Model.dart';
import '../../Model/stories_model.dart';
import 'Widgets/PostCards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left:20.w,right: 20.w,top: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Welcome Back!",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.sp),),
                    Padding(
                      padding:  EdgeInsets.only(right: 70.w),
                      child: SvgPicture.asset("assets/icons/Hand icon.svg"),
                    ),
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
              Container(
                height: 130.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sampleUsers.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {

                      // First image view for adding new story
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  AddToStory()));

                        },
                        child: Padding(
                          padding:  EdgeInsets.all(8.w),
                          child: Column(
                            children: [
                              Stack(
                                children: [

                                  CircleAvatar(
                                    radius: 40.r,
                                    child: Image.asset('assets/images/Ellipse 1.png'),
                                  ),
                                  Positioned(
                                    top: 2,
                                    right: 2,
                                    child: Container(
                                      height: 15,
                                      width: 15,

                                      decoration: BoxDecoration(
                                        color: Color(0xff447FE7),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(

                                        child: Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                        ),

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text("Add Story")
                            ],
                          ),
                        ),
                      );
                    } else {
                      // Rest of the image views for viewing stories
                      return GestureDetector(
                        onTap: () {
                            Navigator.push(
                                    context,
                              MaterialPageRoute(
                          builder: (context) =>  StoryPage()));

                            },
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Container(
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.red,
                              width: 2,
                            ),),
                                child: CircleAvatar(
                                  radius: 40.r,
                                  child: Image.asset(sampleUsers[index].imageUrl),
                                ),
                              ),
                              Text(sampleUsers[index].userName)
                            ],
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
              SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/Ellipse 1.png'),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  CreatePost()));

                    },
                    child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child:  Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Text("What's on your mind?",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                SvgPicture.asset('assets/icons/uploadphoto.svg',color: Colors.blue,)
              ],
            ),
          ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Near You",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.sp),),
                    Text("View All",style: TextStyle(decoration:TextDecoration.underline,
                        fontWeight: FontWeight.w600,fontSize: 21.sp,color: const Color.fromRGBO(68, 127, 231, 1)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
             Container(
               height: MediaQuery.of(context).size.height * 0.57,
               child: ListView.builder(
                 shrinkWrap: false,
                scrollDirection: Axis.horizontal,
               itemCount: 3,
                 itemBuilder: (BuildContext context, int index) {
                   return Padding(
                     padding: EdgeInsets.only(left: 30.w,bottom: 15.h,top: 5.h),
                     child: Container(
                       height: MediaQuery
                           .of(context)
                           .size
                           .height * 0.48,
                       width: MediaQuery
                           .of(context)
                           .size
                           .width * 0.8,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5),
                             spreadRadius: 2,
                             blurRadius: 3,
                             offset: Offset(0, 3),

                           ),
                         ],
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(
                                 top: 3.h, left: 3.w, right: 3.w),
                             child: Container(
                               height: 40.h,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                   borderRadius: const BorderRadius.vertical(
                                     top: Radius.circular(20),
                                   ),
                                   gradient: LinearGradient(
                                     begin: Alignment.topCenter,
                                     end: Alignment.bottomCenter,
                                     colors: [
                                       Colors.red.shade100,
                                       Color.fromRGBO(253, 253, 253, 1),
                                     ],
                                   )
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   IconButton(
                                       onPressed: () {}, icon: SvgPicture.asset(
                                     "assets/icons/mdi_cards-heart.svg",
                                     color: Colors.red,)),
                                   Text("Send Match Request", style: TextStyle(
                                       color: Colors.red, fontSize: 14.sp),)
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(horizontal: 20.w),
                             child: Text(carditems[index].name, style: TextStyle(
                                 fontWeight: FontWeight.w700, fontSize: 30.sp)),
                           ),
                           Row(
                             children: [
                               IconButton(onPressed: () {},
                                   icon: SvgPicture.asset(
                                     "assets/icons/Icon.svg", height: 20,)),
                               Text(carditems[index].distance,
                                 style: TextStyle(color: Color(0xff3F3F3F),
                                     fontWeight: FontWeight.w600, fontSize: 12.sp),),
                             ],
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(horizontal: 3.w),
                             child: SizedBox(
                               height: MediaQuery
                                   .of(context)
                                   .size
                                   .height * 0.23,
                               width: double.infinity,
                               child: Image.asset(
                                 carditems[index].image, fit: BoxFit.fill,),
                             ),
                           ),
                           Padding(
                             padding:  EdgeInsets.only(top: 8.h),
                             child: Row(
                               children: [
                                 IconButton(onPressed: () {},
                                     icon: SvgPicture.asset(
                                         "assets/icons/noto_female-sign.svg")),
                                 Text(carditems[index].age, style: TextStyle(color: Color(
                                     0xff3F3F3F),
                                     fontWeight: FontWeight.w600, fontSize: 12.sp),),
                                 IconButton(onPressed: () {},
                                     icon: SvgPicture.asset(
                                         "assets/icons/noto_school.svg")),
                                 Text(
                                   carditems[index].uni, style: TextStyle(color: Color(
                                     0xff3F3F3F),
                                     fontWeight: FontWeight.w600, fontSize: 12.sp),),
                               ],
                             ),
                           ),
                           Row(
                             children: [
                               IconButton(onPressed: () {},
                                   icon: SvgPicture.asset(
                                       "assets/icons/Group 131.svg")),
                               Text(carditems[index].address,
                                 style: TextStyle(color: Color(0xff3F3F3F),
                                     fontWeight: FontWeight.w600, fontSize: 12.sp),),
                             ],
                           ),
                           Row(mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(CupertinoIcons.multiply, size: 15,
                                 color: Color(0xff808080),),
                               Text(
                                 "Remove", style: TextStyle(color: Color(0xff808080),
                                   fontWeight: FontWeight.w600, fontSize: 14.sp),),
                             ],
                           ),
                         ],
                       ),
                     ),
                   );

                 }),
             ),
           Post_Cards(),
            ],
          ),
        ) ,
      ),
    );
  }
}

