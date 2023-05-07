import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:response_ui/consts.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String labelText;
  final double horizontalPadding;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.labelText,
    this.horizontalPadding = 100,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Constants.whiteColor,
      ),
      label: Text(
        labelText,
        style: const TextStyle(fontSize: 17, color: Constants.whiteColor),
      ),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Constants.whiteColor, width: 3),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
