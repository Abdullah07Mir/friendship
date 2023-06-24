import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendship/components/Constants.dart';

class ProfileMatched extends StatelessWidget {
  const ProfileMatched({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back)),
              SizedBox(height: 50.h,),
              Center(
                child: CircleAvatar(
                  backgroundColor: Color(0xffBA0C2F),
                  radius: 60.r,
                  child: IconButton(onPressed: () {
                  }, icon: SvgPicture.asset('assets/icons/heartoutlined.svg',
                    color: Colors.white,height: 50.h,width: 50.w,),),
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Text('Hurray it\'s a Match',
                  style: TextStyle(color: Color.fromRGBO(68, 127, 231, 1),fontWeight: FontWeight.bold,fontSize: 25.sp),),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Text('You and Angela H. Stout like one another \n Hope everything goes well.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromRGBO(79, 79, 79, 1),fontWeight: FontWeight.bold,fontSize: 18.sp),),
              ),
              SizedBox(height: 20.h,),
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: double.infinity,
            child: Padding(
              padding:  EdgeInsets.only(top: 30.h),
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                      left: 70.w,
                      child: Container(
                        height: 150.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage( image:AssetImage('assets/images/Alex.jpg',),fit: BoxFit.cover,)
                        ),
                      ),
                    ),
                    Positioned(
                      right: 70.w,
                      child: Container(
                        height: 150.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            image: DecorationImage( image:AssetImage('assets/images/jbieber.jpg',),fit: BoxFit.cover,)
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
              SizedBox(height: 20.h,),
              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:blueColor,borderRadius: BorderRadius.circular(20.r)
                ),
                child: Center(child: Text('Chat',style: signinButtontextstyle)),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(
                      color: Color.fromRGBO(68, 127, 231, 1),
                      width: 2,
                    )
                ),
                child: Center(child: Text('Match more',style: TextStyle(color: Color.fromRGBO(68, 127, 231, 1),
                    fontSize: 24.sp,fontWeight: FontWeight.bold),)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
