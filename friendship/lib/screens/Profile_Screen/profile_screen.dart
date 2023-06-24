import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Home_Screen/Widgets/PostCards.dart';
import '../Home_Screen/Widgets/Post_History_items.dart';
import '../Subscriptions.dart';
import 'Widgets/Profile_Pic_Name.dart';
import 'Widgets/Settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> imageUrls = [
    'assets/images/Image (1).jpg',
    'assets/images/Image (2).jpg',
    'assets/images/Image (3).jpg',
    'assets/images/Image (4).jpg',
    'assets/images/Image (1).jpg',
    'assets/images/Image (2).jpg',
    'assets/images/Image (3).jpg',
    'assets/images/Image (4).jpg',
    'assets/images/Image (1).jpg',
    'assets/images/Image (2).jpg',
    'assets/images/Image (3).jpg',
    'assets/images/Image (4).jpg',
    'assets/images/Image (1).jpg',
    'assets/images/Image (2).jpg',
    'assets/images/Image (3).jpg',
    'assets/images/Image (4).jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  SettingsScreen()));

                }, icon: SvgPicture.asset('assets/icons/setting2.svg'),) ,
                IconButton(onPressed: () {  }, icon: SvgPicture.asset('assets/icons/logoutcurve.svg',color: Colors.red,),),
              ],
            ),
            buildPic_Name(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      '10', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 10.h,),
                    const Text(
                      'posts', style: TextStyle(color: Colors.grey),
                    ),],),
                SizedBox(
                  width: 1,
                  height: 30.h,
                  child: Container(
                    color: Colors.grey.shade300,),
                ),
                Column(
                  children:  [
                    const Text(
                      '100', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 10.h,),
                    const Text(
                      'followers',
                      style: TextStyle(color: Colors.grey),),],
                ),
                SizedBox(
                  width: 1,
                  height: 30.h,
                  child: Container(
                    color: Colors.grey.shade300,),
                ),
                Column(
                  children:  [
                    const Text(
                      '200', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(height: 10.h,),
                    const Text(
                      'following', style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h,),

            Container(
              height: 100.h,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(244, 175, 9, 1),

              ),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Row(
                  children: [
                    Center(
                      child: Text("Your\'e using 3 days free trial\n "
                          "after that need to subscribe!",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp,color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  Subscription()));
                      },
                      child: Container(
                        height: 40.h,
                        width: 120.w,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20.r)),
                        child: Center(child: Text("See pricing",style: TextStyle(color: Color.fromRGBO(244, 175, 9, 1)),)),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Posts_History(imageUrls: imageUrls),

          ],
        ),
      )),
    );
  }


}
