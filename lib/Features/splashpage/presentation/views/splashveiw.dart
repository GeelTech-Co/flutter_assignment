
import 'package:assignment_test/core/utils/assetsdata.dart';
import 'package:assignment_test/main.dart';
import 'package:flutter/material.dart';




class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    
    goToNextView();
  } 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
     
      body: Center(
        child: Image.asset(AssetsData.logo)),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
    // Get.to(OnbordingView());
   Navigator.push(context, MaterialPageRoute( builder: (context) =>  const MyHomePage(title: 'home',)));       
          }

    
    
    );
}
}