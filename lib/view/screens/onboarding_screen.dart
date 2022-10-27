import 'package:fit_body/view/screens/age_page.dart';
import 'package:fit_body/view/screens/gender_page.dart';
import 'package:fit_body/view/screens/weight_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<Widget> screens = [AgePage(), GenderPage(), WeightPage()];
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(122, 49, 46, 46),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: screens,
          ),
          Container(
            alignment: Alignment(0, 0.85),
            child: SmoothPageIndicator(
              controller: _controller,
              count: screens.length,
              effect: SlideEffect(
                activeDotColor: Theme.of(context).cardColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
