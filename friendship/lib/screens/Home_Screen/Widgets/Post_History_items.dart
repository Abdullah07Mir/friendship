import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class Posts_History extends StatelessWidget {
  const Posts_History({
    super.key,
    required this.imageUrls,
  });

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imageUrls[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/icons/heartoutlined.svg',
                        color:Colors.white,height: 15.h,width: 15.w,),
                      Text('12k', style: TextStyle(color: Colors.white,fontSize: 8.sp)),
                      SvgPicture.asset('assets/icons/message.svg',
                        color:Colors.white,height: 15.h,width: 15.w,),
                      Text('10k', style: TextStyle(color:Colors.white,fontSize: 8.sp)),
                      SvgPicture.asset('assets/icons/share.svg',
                        color:Colors.white,height: 15.h,width: 15.w,),
                      Text('2k', style: TextStyle(color: Colors.white,fontSize: 8.sp)),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}