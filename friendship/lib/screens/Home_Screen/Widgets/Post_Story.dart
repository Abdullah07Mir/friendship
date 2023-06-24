import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friendship/components/Constants.dart';

class PostStory extends StatefulWidget {
  const PostStory({Key? key}) : super(key: key);

  @override
  State<PostStory> createState() => _PostStoryState();
}

class _PostStoryState extends State<PostStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/postimage.jpg',
            height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
          Positioned(
            top: 50.h,
            left: 15,
            child: CircleAvatar(
              backgroundColor: Colors.black45,
              radius: 20.r,
              child: Center(
                  child: InkWell(
                    onTap: (){Navigator.pop(context);},
                      child: Icon(Icons.keyboard_arrow_left_rounded,size: 30,))),
            ),
          ),
          Positioned(
            top: 50.h,
            right: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black45,
                  radius: 20.r,
                  child: Center(child: IconButton(onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/posticon1.svg"),)),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(
                  backgroundColor: Colors.black45,
                  radius: 20.r,
                  child: Center(child: IconButton(onPressed: () {  },
                    icon: SvgPicture.asset("assets/icons/posticon2.svg"),),),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(
                  backgroundColor: Colors.black45,
                  radius: 20.r,
                  child: Center(child: IconButton(onPressed: () {  },
                    icon: SvgPicture.asset("assets/icons/posticon3.svg"),),),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width/3.1,
            child: ElevatedButton(onPressed: (){},
                child: Center(
              child: Row(
                children: [
                  Text('Post to story',style: signinButtontextstyle),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),
            )),
          ),
        ],
      ),
    );
    
  }
}
