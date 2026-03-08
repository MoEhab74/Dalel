import 'package:dalel/core/widgets/custom_skip_buttom.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/get_buttoms.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 32),
              CustomSkipButton(controller: _controller),
              OnBoardingBody(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              SizedBox(height: 105),
              GetButtoms(controller: _controller, currentIndex: _currentIndex),
            ],
          ),
        ),
      ),
    );
  }
}

