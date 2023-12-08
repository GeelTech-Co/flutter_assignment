import 'package:assignment_test/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: SvgPicture.asset(ImageAssets.loginPic, height: 200,width: 200,),
    );
  }
}