import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendship/screens/Profile_Screen/Widgets/Others_Profile.dart';

import '../../../Model/post_Model.dart';

class Post_Cards extends StatelessWidget {
  const Post_Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: postitems.length,
        itemBuilder: (BuildContext context, int index) {
          final Postitems =postitems[index];
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
// User Image and Name Row
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  OthersProfile()));
                      },
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage(Postitems.image),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          Postitems.name,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/world.svg'),
                            const SizedBox(width: 10.0),
                            Text('Public',style: TextStyle(color: Colors.grey,fontSize: 14.sp),),
                            const SizedBox(width: 10.0),
                            Text('Posted 3 hours ago',style: TextStyle(color: Colors.grey,fontSize: 14.sp),),

                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.8,
                    maxHeight: double.infinity,
                  ),
                  child: Container(
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'

                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                const SizedBox(height: 10.0),
// Post Image
                Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: AssetImage(Postitems.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(height: 10.0),
// Post Info Row
                Row(
                  children: [
                    Postitems.liked ?
                    IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/heartoutlined.svg',
                      color:Color.fromRGBO(64, 64, 64, 1),height: 27.h,width: 27.w,))
                        :IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/heart.svg',
                      color:Color.fromRGBO(186, 12, 47, 1),)),
                    const Text(
                      '100k ',
                      style: TextStyle(
                          color: Color.fromRGBO(64, 64, 64, 1)
                      ),
                    ),

                    const SizedBox(width: 10.0),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/message.svg',color: Color.fromRGBO(64, 64, 64, 1))),
                    Text(
                      '12k ',
                      style: TextStyle(
                        color: Color.fromRGBO(64, 64, 64, 1),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/share.svg',color:Color.fromRGBO(64, 64, 64, 1))),
                    Text(
                      '10k ',
                      style: TextStyle(
                        color: Color.fromRGBO(64, 64, 64, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
