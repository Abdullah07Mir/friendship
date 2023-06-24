import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friendship/User_Authentication/signin_screen.dart';
import 'package:delayed_display/delayed_display.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  final initialDelay=Duration(seconds: 0);
  @override
  void initState() {
    // TODO: implement initState
    getToHomeScreen();
    super.initState();
  }
  getToHomeScreen() async{
    await Future.delayed(const Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SigninPage()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue.shade50,
                Colors.red.shade50,
                Colors.yellow.shade50
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DelayedDisplay(
                fadeIn: true,
                delay: Duration(seconds: initialDelay.inSeconds + 2),
                slidingBeginOffset: Offset(-1,-3),
                slidingCurve:Curves.easeInOutCubicEmphasized ,
                child: Center(child: Image.asset('assets/images/Logo.png'),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
