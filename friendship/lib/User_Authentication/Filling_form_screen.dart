import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendship/User_Authentication/signup_screen.dart';
import 'package:friendship/components/Constants.dart';
import 'package:intl/intl.dart';

import '../screens/homepage/home_page.dart';
import '../screens/Home_Screen/home_screen.dart';

class FillFormPage extends StatefulWidget {
  const FillFormPage({Key? key}) : super(key: key);

  @override
  State<FillFormPage> createState() => _FillFormPageState();
}

class _FillFormPageState extends State<FillFormPage> {
  bool selected =false;
  bool unselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  SignupPage()));
              }, icon: Icon(Icons.arrow_back,color: Color(0xff303030),)),
              SizedBox(height: 10.h,),
              Center(
                child: Text("Please fill out the below \n information!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30.sp),),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text("Choose your Gender",
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.sp),),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selected?
                    InkWell(onTap: () {
                      setState(() {
                        if(selected){
                          selected = false; unselected= false;
                        }
                      });
                    },
                      child: Container(
                        height: 205.h,
                        width: 185.h,
                        decoration: BoxDecoration(color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 20.h),
                              child: Text("Girl",style: TextStyle(color: Colors.red),),
                            ),
                            SizedBox(height: 10.h),
                            Expanded(child: Image.asset("assets/images/female.png")),
                          ],
                        ),
                        ),
                    ):
                    InkWell(onTap: () {
                      setState(() {
                          selected = true; unselected= false;

                      });
                    },
                      child: Container(
                        height: 205.h,
                        width: 185.h,
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 20.h),
                              child: Text("Girl",style: TextStyle(color: Color.fromRGBO(159, 159, 159, 1)),),
                            ),
                            SizedBox(height: 10.h),
                            Expanded(child: Image.asset("assets/images/female.png")),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 20.w,),
                    unselected?
                    InkWell(onTap: () {
                      setState(() {
                        if(selected){
                          selected = false; unselected= false;
                        }
                      });
                    },
                      child: Container(
                        height: 205.h,
                        width: 185.h,
                        decoration: BoxDecoration(color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 20.h),
                              child: Text("Boy",style: TextStyle(color: Colors.blue),),
                            ),
                            SizedBox(height: 10.h),
                            Expanded(child: Image.asset("assets/images/male.png")),
                          ],
                        ),
                      ),
                    ):
                    InkWell(onTap: () {
                      setState(() {
                        selected = false; unselected= true;

                      });
                    },
                      child: Container(
                        height: 205.h,
                        width: 185.h,
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 20.h),
                              child: Text("Boy",style: TextStyle(color: Color.fromRGBO(159, 159, 159, 1)),),
                            ),
                            SizedBox(height: 10.h),
                            Expanded(child: Image.asset("assets/images/male.png")),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Birthday",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21.sp),),
                    SizedBox(width: 10.w,),
                    Padding(
                      padding:  EdgeInsets.only(top: 5.h),
                      child: Text("*(Real age helps in quickly match)*",
                        style: TextStyle(fontWeight: FontWeight.w600,
                            fontSize: 12.sp,color: Color(0xff808080)),),
                    ),
                    SizedBox(width: 10.w,),
                    Text("              "),
                    InkWell(
                      onTap: () => _selectDate(context),
                      child: Text("Edit",style: TextStyle(decoration:TextDecoration.underline,
                          fontWeight: FontWeight.w600,fontSize: 21.sp,color: Color.fromRGBO(68, 127, 231, 1)),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    _selectedDate == null
                        ? Text('Please select a date',style: TextStyle(color:const Color(0xff808080),
                        fontWeight: FontWeight.w600,fontSize: 18.sp),)
                        : Text(DateFormat.yMMMMd().format(_selectedDate!),style: TextStyle(color:const Color(0xff808080),
                        fontWeight: FontWeight.w600,fontSize: 18.sp),),
                    SizedBox(width: 10.w,),
              if (_selectedDate != null) ...[
               Text(_calculateAge(_selectedDate)!,style: TextStyle(color:const Color(0xff808080),
                   fontWeight: FontWeight.w600,fontSize: 18.sp),),
                Text('years Old',style: TextStyle(color:const Color(0xff808080),
                    fontWeight: FontWeight.w600,fontSize: 18.sp),)

                  ],
    ]
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(height: 5,thickness: 1,),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("School/College",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21.sp),),
                    // SizedBox(width: 10.w,),
                    Text("Edit",style: TextStyle(decoration:TextDecoration.underline,
                        fontWeight: FontWeight.w600,fontSize: 21.sp,color: const Color.fromRGBO(68, 127, 231, 1)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Text("Yale University",style: TextStyle(color:const Color(0xff808080),
                        fontWeight: FontWeight.w600,fontSize: 18.sp),),

                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(height: 5,thickness: 1,),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Location",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21.sp),),
                    // SizedBox(width: 10.w,),
                    Text("Edit",style: TextStyle(decoration:TextDecoration.underline,
                        fontWeight: FontWeight.w600,fontSize: 21.sp,color: const Color.fromRGBO(68, 127, 231, 1)),),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Text("710 Ellwood St El Campo texas",style: TextStyle(color:const Color(0xff808080),
                        fontWeight: FontWeight.w600,fontSize: 18.sp),),

                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(height: 5,thickness: 1,),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: InkWell(
                  onTap:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  HomePage()));
                  },
                  child: Container(
                    height: 62,
                    width: double.infinity,
                    decoration: BoxDecoration(color: blueColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text("Complete",
                      style: signinButtontextstyle),),

                  ),
                ),
              ),


            ],
          ),
      ),
    );
  }
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  String? _calculateAge(DateTime? birthDate) {
    if (birthDate == null) return null;

    final today = DateTime.now();
    final age = today.year - birthDate.year;

    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      return '${age - 1}';
    }

    return '$age';
  }
}
