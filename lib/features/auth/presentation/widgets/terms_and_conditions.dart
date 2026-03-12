import 'package:dalel/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_conditions_text.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [CustomCheckBox(), TermsAndConditionText()]);
  }
}

