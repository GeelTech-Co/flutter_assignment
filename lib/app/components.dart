
import 'package:assignment_test/resources/assets_manager.dart';
import 'package:assignment_test/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final bool obscureText;
  final TextInputType? textInputType;
  final String? hint;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;
  final bool enable;
  final double? height;
  final FocusNode? focusNode;
  final double textFontSize;
  final Color textColor;
  final int maxLines;
  final int maxLength;
  final BoxConstraints? prefixIconConstraints;
  final List<TextInputFormatter>? inputFormatters;
  final TextDirection? textDirection;
  final Color borderColor;
  final double radius;
  final double borderWidth;
  final bool? filled;
  final Color? filledColor;
  final double contentPadding;

  const DefaultTextFormField({
    Key? key,
    this.height=45,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.textInputType,
    this.suffixIcon,
    this.hint,
    this.readOnly = false,
    this.enable = true,
    this.onChanged,
    this.focusNode,
    this.textFontSize = 15,
    this.textColor = ColorsManager.white,
    this.maxLines = 1,
    this.errorText,
    this.prefixIcon,
    this.maxLength = 1000,
    this.prefixIconConstraints,
    this.inputFormatters,
    this.textDirection,
    this.borderColor = ColorsManager.trans,
    this.radius = 15,
    this.borderWidth = 1,
    this.filled=true,
    this.filledColor= ColorsManager.textFieldFillBlackBG,
    this.contentPadding = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: TextFormField(
          focusNode: focusNode,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          onChanged: onChanged,
          maxLength: maxLength,
          maxLines: maxLines,
          textDirection: textDirection,
          buildCounter: (context,
              {required currentLength, required isFocused, maxLength}) =>
          null,
          textAlignVertical: TextAlignVertical.center,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: textFontSize, letterSpacing: .25,color: textColor),
          cursorColor: ColorsManager.redPrimary,
          validator: validator,
          controller: controller,
          enabled: enable,
          keyboardType: textInputType,
          obscureText: obscureText,
          readOnly: readOnly,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
              filled: filled,
              fillColor: filledColor,
              errorText: errorText,
              prefixIcon: prefixIcon,
              prefixIconConstraints: prefixIconConstraints,
              hintText: hint,
              suffixIcon: suffixIcon,
              contentPadding: EdgeInsets.all(contentPadding),
              errorStyle: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: ColorsManager.redPrimary),
              disabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: borderColor, width: borderWidth),
                  borderRadius: BorderRadius.all(Radius.circular(radius))),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: borderColor, width: borderWidth),
                  borderRadius: BorderRadius.all(Radius.circular(radius))),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorsManager.errorColor, width: borderWidth),
                  borderRadius: BorderRadius.all(Radius.circular(radius))),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: borderColor, width: borderWidth),
                  borderRadius: BorderRadius.all(Radius.circular(radius))),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: borderColor, width: borderWidth),
                  borderRadius: BorderRadius.all(Radius.circular(radius)))),
        ));
  }
}
class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color bgColor;
  final double width;
  final double radius;
  final double height;

  const DefaultButton(
      {super.key,
        required this.text,
        this.onPressed,
        this.bgColor = ColorsManager.redPrimary,
        this.width = double.infinity,
        this.radius = 8,
        this.height = 45});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: bgColor,
                fixedSize: Size(double.infinity, height),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                )),
            child:Text(text)));
  }
}
class DefaultProgressIndicator extends StatelessWidget {
  const DefaultProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorsManager.redPrimary,
      ),
    );
  }
}
class ErrorContent extends StatelessWidget {
  const ErrorContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ImageAssets.errorPic,
      height: 200,
      width: 200,
    );
  }
}

class DefaultSeparator extends StatelessWidget {
  const DefaultSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 24),
      color: ColorsManager.white,
      height: 4,
    );
  }
}