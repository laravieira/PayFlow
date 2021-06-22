import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatefulWidget {
  final VoidCallback onTap;
  double? width;
  double? height;
  SocialLoginButton({Key? key, this.width, this.height, required this.onTap})
      : super(key: key);

  @override
  _SocialLoginButtonState createState() => _SocialLoginButtonState();
}

class _SocialLoginButtonState extends State<SocialLoginButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: const Border.fromBorderSide(
                BorderSide(color: AppColors.stroke))),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(AppImages.goole),
            ),
            Container(
              width: 1,
              height: widget.height,
              color: AppColors.stroke,
            ),
            Expanded(
              flex: 4,
              child: Text(
                "Entrar com Google",
                style: AppTextStyles.buttonGray,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
