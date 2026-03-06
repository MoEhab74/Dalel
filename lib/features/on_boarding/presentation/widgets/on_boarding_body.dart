import 'package:dalel/features/on_boarding/presentation/widgets/page_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return PageViewBody(controller: controller);
        },
      ),
    );
  }
}
