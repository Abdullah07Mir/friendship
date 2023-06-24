import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendship/Model/profile_Model.dart';
import 'package:friendship/screens/Profile_Screen/Widgets/Get_Time.dart';

import '../../../components/Constants.dart';
import '../../Subscriptions.dart';
import 'Profile_Pic_Name.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {  }, icon: SvgPicture.asset('assets/icons/logoutcurve.svg',
                    color: Colors.red,),),
                ],
              ),
              buildPic_Name(),

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
                        child: Text("Set a using time for your child \n by clicking on set time.",
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
                                  builder: (context) =>  GetTime()));
                        },
                        child: Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20.r)),
                          child: Center(child: Text("Set Time",style: TextStyle(color: Color.fromRGBO(244, 175, 9, 1)),)),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("History",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21.sp),),
                  Text("View All",style: TextStyle(decoration:TextDecoration.underline,
                      fontWeight: FontWeight.w600,fontSize: 21.sp,color: const Color.fromRGBO(68, 127, 231, 1)),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Divider(thickness: 2,),
              SizedBox(height: 20.h,),
          Expanded(
            child: ListView.builder(
              itemCount: historyItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: colors[index % colors.length],
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                historyItems[index].title,
                                style:  TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                historyItems[index].subtitle,
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20.w,),
                        Text(historyItems[index].text,
                          style: TextStyle(color: Colors.grey,fontSize: 16.sp,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Divider(thickness: 2,)
                  ],
                );
              },
            ),
          ),
              
            ],
          ),
        ),
      ),
    );
  }
}
