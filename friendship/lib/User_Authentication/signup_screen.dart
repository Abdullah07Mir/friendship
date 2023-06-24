import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendship/User_Authentication/Filling_form_screen.dart';
import 'package:friendship/User_Authentication/signin_screen.dart';
import 'package:friendship/components/Constants.dart';

class SignupPage extends StatefulWidget {

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 50.h),
              child: Center(
                  child: Container(
                    height: 240.h,
                      width: 380.w,
                      child: Image.asset("assets/images/signuplogo.png"))
              ),
            ),
            SizedBox(height: 10.h,),
            Center(
              child: Text("Create an Account",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.sp),),
            ),
            SizedBox(height: 10.h,),
            Center(
              child: Text("By Clicking on 'Create account' you "
                  "agree to \n  our terms of services and privacy Policy",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            SizedBox(height: 16.h),
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
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  FillFormPage()));
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  height: 62,
                  width:double.infinity,
                  decoration: BoxDecoration(color: blueColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Create an account",
                    style: signinButtontextstyle),),

                ),
              ),
            ),
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
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [

                Text("already have an account?",
                  style: TextStyle(color:Color(0xff808080) ,
                      fontSize: 16.sp),),
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  SigninPage()));
                  },
                  child: Text("Sign up",
                    style: TextStyle(color:Color(0xff447FE7) ,
                      fontSize: 16.sp,),),
                ),
              ],
            ),

          ],
        )
    );
  }
}