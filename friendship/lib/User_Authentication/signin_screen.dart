import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendship/User_Authentication/signup_screen.dart';

import '../components/Constants.dart';

class SigninPage extends StatefulWidget {


  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 100.h),
              child: Center(
                  child: Image.asset("assets/images/Logo.png")
              ),
            ),
            SizedBox(height: 20.h,),
            Center(
              child: Text("Sign in to your Account",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.sp),),
            ),
            SizedBox(height: 15.h,),
            Center(
              child: Text("By using our services you are "
                  "agreeing to  our \n term and privacy Statement",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Email Address',
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration:  InputDecoration(
                  hintText: 'password (10 Characters Max)',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility_off_outlined), onPressed: () {  },),

                ),),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 62,
                width: double.infinity,
                decoration: BoxDecoration(color: blueColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("Sign in",
                  style: signinButtontextstyle, ),),

              ),
            ),
            SizedBox(height: 20.h),
            Text("forgot password?",
              style: TextStyle(color:Color(0xff447FE7) ,
                  fontSize: 18.sp),),
            SizedBox(height: 20.h),
            Text("or continue with",
              style: TextStyle(color:Color(0xff808080) ,
                  fontSize: 16.sp),),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 64.h,
                  width: 64.h,
                  decoration: BoxDecoration(color: const Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset("assets/images/Vector google.png"),),
                SizedBox(width: 40.w,),
                Container(
                  height: 64.h,
                  width: 64.h,
                  decoration: BoxDecoration(color: const Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Image.asset("assets/images/apple.png"),),

              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [

                Text("don't have an account?",
                  style: TextStyle(color:Color(0xff808080) ,
                      fontSize: 16.sp),),
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  SignupPage()));
                  },
                  child: Text("Sign up",
                    style: TextStyle(color:Color(0xff447FE7) ,
                      fontSize: 16.sp,),),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text("Parent Signin",
              style: TextStyle(color:Color(0xff447FE7) ,
                fontSize: 16.sp,),),

          ],
        )
    );
  }
}