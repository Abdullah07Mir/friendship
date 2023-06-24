import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
Column buildPic_Name() {
  return Column(
    children: [
      Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 116.h,
                  width: 116.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/Profile image.jpg'),fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 0,right: 0,
                  child: Container(
                    height: 26.h,
                    width: 26.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.h),
                      child: SvgPicture.asset('assets/icons/edit.svg',height: 5.h,width: 5.w,),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      SizedBox(height: 10.h,),
      Center(child: Text('Cathy C. Thomas',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),)),
      SizedBox(height: 10.h,),
      Center(child: Text('New York - Study at - Yale University',style: TextStyle(fontSize: 14.sp,color: Colors.grey),)),
      SizedBox(height: 20.h,),
    ],
  );
}