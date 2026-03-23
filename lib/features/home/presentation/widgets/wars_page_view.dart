import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/home/presentation/widgets/wars_indicator_body.dart';
import 'package:flutter/material.dart';

class WarsPageView extends StatefulWidget {
  const WarsPageView({super.key});

  @override
  State<WarsPageView> createState() => _WarsPageViewState();
}

class _WarsPageViewState extends State<WarsPageView> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: _controller,
        itemCount: wars.length,
        itemBuilder: (context, index) {
          return WarsIndicatorBody(
            warImage: wars[index],
            controller: _controller,
          );
        },
      ),
    );
  }
}
