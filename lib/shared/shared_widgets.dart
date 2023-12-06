import 'package:flutter/material.dart';

Widget defaultTextFormField({TextEditingController? controller,TextInputType keyboardType = TextInputType.text,  required String labelText, Widget? suffixIcon,bool obscureText = false }){
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.visiblePassword,
    obscureText: obscureText,
    decoration: InputDecoration(
      labelText: labelText,
      suffixIcon:suffixIcon,
    ),
  );
}


Widget defaultHomeTab({required BuildContext context, required String text}){
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.25,
    child: Tab(
      child: Text(text),
    ),
  );
}


Widget defaultButton({required void Function()? onPressed,required String text}){
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(text),
  );
}


Widget defaultDivider({double thickness=0,Color color=Colors.black}){
  return Divider(
    thickness: thickness,
    color: color,
  );
}