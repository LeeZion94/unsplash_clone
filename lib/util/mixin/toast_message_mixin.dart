import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:unsplash_clone/theme/app_colors.dart';
import 'package:unsplash_clone/theme/app_typhography.dart';

mixin ToastMessageMixin {
  void showToastMessage(String text, BuildContext context) {
    showToastWidget(
      position: StyledToastPosition.bottom,
      animation: StyledToastAnimation.slideFromBottom,
      reverseAnimation: StyledToastAnimation.slideToBottom,
      duration: const Duration(seconds: 3),
      animDuration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      reverseCurve: Curves.fastOutSlowIn,
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 5.0,
        ),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: AppColors.bg_contrast,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                text,
                style:
                    AppTypography.shared.paragraph_md(AppColors.fg_on_contrast),
              ),
            ),
          ],
        ),
      ),
      context: context,
    );
  }
}
