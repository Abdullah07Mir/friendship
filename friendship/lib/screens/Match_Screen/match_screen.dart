import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friendship/screens/Match_Screen/Profile_Matched.dart';

class MatchScreen extends StatefulWidget {

  @override
  _MatchScreenState createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  final List<String> imageUrls = [
    'assets/images/girl bg.jpg',
    'assets/images/boy bg.jpg',
  ];
  final List<String> Name =[
    "Galina Smith, 16",
        "Allen Alexander, 17"
  ];
  final List<Map<String, dynamic>> hobbies = [
    {      'icon': 'assets/icons/location.svg',      'label': '1.3 Miles Away',    },
    {      'icon': 'assets/icons/Us flag.svg',      'label': 'Philadelphia',    },
    {      'icon': 'assets/icons/noto_school.svg',      'label': 'Yale University',    },
    {      'icon': 'assets/icons/music.svg',      'label': 'Live Music',    },
    {      'icon': 'assets/icons/hwriting.svg',      'label': 'Creative Writing',    },
    {      'icon': 'assets/icons/dress.svg',      'label': 'Fashion',    },
    {      'icon': 'assets/icons/family.svg',      'label': 'Family time',    },
    {      'icon': 'assets/icons/badminton.svg',      'label': 'Badminton',    },
    {      'icon': 'assets/icons/reading.svg',      'label': 'Reading',    },  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView.builder(
        itemCount: imageUrls.length,
          itemBuilder: (context, index){
          return Stack(

            children: [
              Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imageUrls[index]),
                        fit: BoxFit.cover,),
                    ),

                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height/2.1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text(Name[index],
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 34.sp),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/2,),
                    child: ListView.builder(
                      itemCount: (hobbies.length / 2).ceil(),
                      itemBuilder: (context, index) {
                        int firstIndex = index * 2;
                        int secondIndex = firstIndex + 1;

                        return Row(
                          children: [
                            Expanded(
                              child: _buildHobbyWidget(hobbies[firstIndex]),
                            ),
                            if (secondIndex < hobbies.length)
                              Expanded(
                                child: _buildHobbyWidget(hobbies[secondIndex]),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 10.h,
                    left: 20.w,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff202020),
                      radius: 30.r,
                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.close),),
                    ),
                  ),
                  Positioned(
                    bottom: 10.h,
                    right: 20.w,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffBA0C2F),
                      radius: 30.r,
                      child: IconButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  ProfileMatched()));
                        },
                        icon: SvgPicture.asset('assets/icons/heartoutlined.svg',
                        color: Colors.white,height: 25.h,width: 25.w,),),
                    ),
                  )
                ],
              ),


            ],
          );
          }
      ) ,
    );
  }
  Widget _buildHobbyWidget(Map<String, dynamic> hobby) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Container(
              decoration: BoxDecoration(color: Colors.black45,
                  borderRadius: BorderRadius.circular(20.r)
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
                child: Row(children: [
                  SvgPicture.asset(
                    hobby['icon'],
                    height: 30.h,
                    width: 30.h,
                  ),
                  SizedBox(width: 12.w),
                  Text(hobby['label'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp),),
                ],),
              ),
            ),



        ],
      ),
    );
  }

}

