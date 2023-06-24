import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friendship/components/Constants.dart';

class DisplayTime extends StatefulWidget {
  const DisplayTime({Key? key}) : super(key: key);

  @override
  State<DisplayTime> createState() => _DisplayTimeState();
}

class _DisplayTimeState extends State<DisplayTime> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:20.w,vertical: 20.h ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: Icon(Icons.arrow_back),),

              ],
            ),
            SizedBox(height: 20.h,),
             CircleAvatar(
              radius: 40.r,
              backgroundImage: AssetImage('assets/images/Ellipse 1.png'),
            ),
            SizedBox(height: 20.h,),
            Center(child: Text('Cathy C. Thomas',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),)),
            SizedBox(height: 50.h,),

            Column(

              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/Ellipse 3.svg'),
                    SvgPicture.asset('assets/icons/Ellipse 4.svg'),
        SizedBox(
          height: 250.h,
          width: 250.w,
          child: const CircularProgressIndicator(
            backgroundColor: Colors.transparent,
            value: 0.8,
            valueColor: AlwaysStoppedAnimation<Color>(blueColor),
            strokeWidth: 15,
          ),
        ),
                Container(
                  height: 230.h,
                  width: 230.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,color: Colors.white
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('05:15',style: TextStyle(color: blueColor,fontSize: 50.sp,fontWeight: FontWeight.bold),),
                      Text('4 minutes 21 sec',style: TextStyle(fontSize: 15.sp,),),
                      Text('Remaining',style: TextStyle(fontSize: 15.sp,),),

                    ],
                  ),
                ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CircleAvatar(
                radius: 30.r,
                backgroundColor: Color(0xffF4AF09),
                child: Icon(Icons.restart_alt,color: Colors.white,),
              ),
              SizedBox(width: 10.w),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _selected = !_selected;
                  });
                },
                child: CircleAvatar(
                  radius: 40.r,
                  backgroundColor: blueColor,
                  child: Icon(_selected?Icons.pause:Icons.play_arrow,color: Colors.white,size: 40,),
                ),
              ),
              SizedBox(width: 10.w),
              CircleAvatar(
                radius: 30.r,
                backgroundColor: Color(0xffBA0C2F),
                child: Icon(Icons.stop,color: Colors.white,),
              ),
            ],),
          ],
        ),
      ),
    ),);
  }
}
