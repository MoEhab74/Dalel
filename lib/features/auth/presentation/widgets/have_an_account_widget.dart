import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatefulWidget {
  const HaveAnAccountWidget({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1;
  final String text2;
  final void Function()? onTap;

  @override
  State<HaveAnAccountWidget> createState() => _HaveAnAccountWidgetState();
}

class _HaveAnAccountWidgetState extends State<HaveAnAccountWidget> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        widget.onTap?.call();
      };
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: widget.text1,
            style: AppTextStyles.poppins400Style16.copyWith(
              fontSize: 14,
              color: AppColors.onBackgroundGray,
            ),
          ),
          TextSpan(
            recognizer: _tapGestureRecognizer,
            text: widget.text2,
            style: AppTextStyles.poppins400Style16.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.onBackgroundGray,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
