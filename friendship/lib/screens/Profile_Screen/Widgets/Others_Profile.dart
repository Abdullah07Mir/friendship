import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendship/components/Constants.dart';

import '../../Home_Screen/Widgets/Post_History_items.dart';

class OthersProfile extends StatefulWidget {
  const OthersProfile({Key? key}) : super(key: key);

  @override
  State<OthersProfile> createState() => _OthersProfileState();
}

class _OthersProfileState extends State<OthersProfile> {
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
  bool _isRequestSent = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.w,right: 20.w,top: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){Navigator.pop(context);},
                  child: Icon(Icons.arrow_back)),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 116.h,
                      width: 116.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/Profile image.jpg'),fit: BoxFit.cover),
                      ),
                    ),
                  ),

              SizedBox(height: 10.h,),
              Center(child: Text('Mario Dedlivanovic',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),)),
              SizedBox(height: 10.h,),
              Center(child: Text('New York - Study at - Yale University',style: TextStyle(fontSize: 14.sp,color: Colors.grey),)),
              SizedBox(height: 20.h,),],
              ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 150.w,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isRequestSent = !_isRequestSent;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: _isRequestSent ? blueColor : Color.fromRGBO(186, 12, 47, 1),
                    onPrimary: Colors.white,
                  ),
                  child: Text(_isRequestSent ? 'Request Sent' : 'Send Request'),
                ),
              ),
              SizedBox(width: 20.w,),
              SizedBox(
                width: 150.w,
                height: 50.h,
                child: OutlinedButton(
                  onPressed: () {
                    // Handle sending message
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey),
                  ),
                  child: Text('Message',style: TextStyle(color: Colors.grey),),
                ),
              ),
            ],
          ),
              SizedBox(height: 20.h,),
          Posts_History(imageUrls: imageUrls),

            ],
          ),
        ),
      ),
    );
  }
}


