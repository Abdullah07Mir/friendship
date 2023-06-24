import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendship/screens/Profile_Screen/Widgets/Display_Time.dart';

import '../../../components/Constants.dart';
class GetTime extends StatefulWidget {
  const GetTime({Key? key}) : super(key: key);

  @override
  State<GetTime> createState() => _GetTimeState();
}

class _GetTimeState extends State<GetTime> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:20.w,vertical: 20.h ),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: Icon(Icons.arrow_back),),
            ],
          ),
          SizedBox(height: 40.h,),
          Center(child: Text('Set control time',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),)),
          SizedBox(height: 10.h,),
          Center(child: Text('Please enter a time duration. After the duration \n'
              'your child app will be locked.',textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.sp,color: Colors.grey),)),
          SizedBox(height: 100.h,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NewWidget(
                Child: const Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '0',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w,),
              NewWidget(
                Child: const Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '0',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w,),
              Container(height: 3.h,width: 10.w,color: Colors.grey,),
              SizedBox(width: 10.w,),
              NewWidget(
                Child: const Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '0',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w,),
              NewWidget(
                Child: const Center(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '0',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Enter Minutes',style: TextStyle(fontSize: 14.sp,color: Colors.grey),),
              Text('Enter Seconds',style: TextStyle(fontSize: 14.sp,color: Colors.grey),),
            ],
          ),

          SizedBox(height: 100.h,),


          SizedBox(height: 20.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  DisplayTime()));
            },
            child: Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color:blueColor,borderRadius: BorderRadius.circular(10.r)
              ),
              child: Center(child: Text('Continue',style: signinButtontextstyle)),
            ),
          ),
        ],),
      ),
    ),);
  }
}

class NewWidget extends StatelessWidget {
   NewWidget({this.Child,});
  Widget? Child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 70.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Child,
    );
  }
}
