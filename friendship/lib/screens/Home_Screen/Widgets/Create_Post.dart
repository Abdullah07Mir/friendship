import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendship/screens/Home_Screen/Widgets/Add_to_Post.dart';

import '../../../components/Constants.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.w,right: 20.w,top: 30.h),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Icon(Icons.arrow_back)),
                  SizedBox(width: 20.w,),
                  Text('Create Post',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      primary:Colors.blue.shade100,
                    ),
                    child: Text('Post'),
                  ),

                ],
              ),
              Divider(thickness: 1,),
              Row(children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundImage: AssetImage('assets/images/Ellipse 1.png'),
                ),
                SizedBox(width: 20.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mario Dedlivanovic',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),),
                    Container(
                      decoration: BoxDecoration(color: Color.fromRGBO(244, 244, 244, 1),
                        borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 3.h),
                        child: Row(children: [
                          SvgPicture.asset('assets/icons/world.svg'),
                          SizedBox(width: 10.w),
                          Text('Public',style: TextStyle(color: Colors.grey,fontSize: 14.sp),),
                          Icon(Icons.arrow_drop_down,color: Colors.grey,),
                        ],),
                      ),
                    ),

                  ],
                ),
              ],),
              SizedBox(height: 10.h),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                      controller: _textController,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        hintText: "Write a caption...",
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ))),
              SizedBox(height: 20.h),
              SizedBox(
                width: 240.w,
                height: 50.h,
                child: ElevatedButton(onPressed: (){

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  AddToPost()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: blueColor,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text('Upload Photo/Video',style: signinButtontextstyle),
                          SizedBox(width: 10.w,),
                          SvgPicture.asset('assets/icons/uploadphoto.svg',height: 20.h,width: 20.w,),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
