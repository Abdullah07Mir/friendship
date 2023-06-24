import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendship/screens/Home_Screen/Widgets/Post_ready.dart';

class AddToPost extends StatefulWidget {
  const AddToPost({Key? key}) : super(key: key);

  @override
  State<AddToPost> createState() => _AddToPostState();
}

class _AddToPostState extends State<AddToPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding:  EdgeInsets.only(top: 80.h,left: 15.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close,
                            color: Color.fromRGBO(255, 255, 255, 1),size: 30,)),
                      SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                      Center(
                        child: Text('Add to Post',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 20.sp,fontWeight: FontWeight.w500),),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/25,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Text('Gallery',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 20.sp,fontWeight: FontWeight.w500),),
                      ),
                      Icon(Icons.arrow_drop_down_outlined,size: 30,color: Colors.white,)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount:8,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150.0,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 0.6,

              ),
              itemBuilder: (BuildContext context, int index) {
                if (index == 0){
                  return Container(
                    color: Color.fromRGBO(26, 26, 26, 1),
                    child: Stack(
                      children: [
                        Center(
                          child: Icon(Icons.camera_alt_outlined,size: 40,color: Colors.white,),
                        ),
                        Positioned(
                          bottom: 15.h,
                          left: 15.w,
                          child: Text('Camera',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 20.sp,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                  );
                }else {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  PostReady()));
                    },
                    child: Container(
                        color: Color.fromRGBO(26, 26, 26, 1),
                        child: Center(child: Image.asset('assets/images/picture.jpg',
                          height: double.infinity,width: double.infinity,fit: BoxFit.fill,),)
                    ),
                  );
                }

              },
            ),
          ),
        ],
      ),
    );
  }
}
