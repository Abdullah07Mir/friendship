import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendship/Model/subs_model.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.h,left: 20.w,right: 20.w),
        child: Column(
          children: [
            Center(child: Text('Find friends faster with',
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 34.sp),)),
            Center(child: Text('Premium',
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 34.sp,
                  color: Color.fromRGBO(186, 12, 47, 1)),)),
            SizedBox(height: 10.h,),
            Center(child: Text('You have three days free teial after that you \n need Subscribe.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromRGBO(63, 63, 63, 1),fontWeight: FontWeight.w500,fontSize: 18.sp,),)),
            SizedBox(height: 40.h,),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Choose any subscriptions",
                    style: TextStyle(color: Color.fromRGBO(63, 63, 63, 1),fontWeight: FontWeight.w500,fontSize: 18.sp,),
                  ),
                ),
                const Expanded(
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.grey,
                  ),
                ),

              ],
            ),

            SizedBox(height: 40.h,),
            ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 20.h),
              itemCount: subcard.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index){
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        if (selectedIndex != -1) {
                          subcard[selectedIndex] = subcard[selectedIndex];
                        }
                        // Select the new item
                        selectedIndex = index;
                        subcard[selectedIndex] = subcard[selectedIndex] ;
                      });
                    },
                    child: Container(
                      height: 100.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),color: Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(
                            color: selectedIndex == index
                                ? Colors.blue
                                : Colors.grey!,
                            width: 2,
                          )
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(subcard[index].number,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 34.sp,
                                color: Color.fromRGBO(186, 12, 47, 1)),),
                            SizedBox(width: 20.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Months',style: TextStyle(color: Color.fromRGBO(63, 63, 63, 1),
                                  fontWeight: FontWeight.w500,fontSize: 18.sp,),),
                                SizedBox(height: 5.h,),
                                Text(subcard[index].price,style: TextStyle(color: Color.fromRGBO(63, 63, 63, 1),
                                  fontWeight: FontWeight.w500,fontSize: 18.sp,),)
                              ],
                            ),
                            Text('       '),
                            Text('       '),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Best value',style: TextStyle(color: Color.fromRGBO(63, 63, 63, 1),
                                  fontWeight: FontWeight.w500,fontSize: 18.sp,),),
                                SizedBox(height: 5.h,),
                                Container(
                                  height: 40.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20.r)),
                                  child: Center(
                                    child: Text(subcard[index].percent,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );

                }
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,borderRadius: BorderRadius.circular(20.r)
              ),
              child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,
                fontSize: 24.sp,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  )
              ),
              child: Center(child: Text('Close',style: TextStyle(color: Colors.blue,
                  fontSize: 24.sp,fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}
