import 'package:flutter/material.dart';
import 'package:leories/modal/onboarding_modal.dart';
import 'package:leories/view/screens/modules/auth/auth_option.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/viewmodal/provider/onboarding_prod.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:provider/provider.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<OnBoardingContent> content = [
    OnBoardingContent(image: 'assets/images/onboarding/onboard1.png', title: 'OnBoarding title will be goes here', discription: 'ObBoarding Description will goes here which will be of 2 line max'),
    OnBoardingContent(image: 'assets/images/onboarding/onboard2.png', title: 'OnBoarding title will be goes here', discription: 'ObBoarding Description will goes here which will be of 2 line max'),
    OnBoardingContent(image: 'assets/images/onboarding/onboard3.png', title: 'OnBoarding title will be goes here', discription: 'ObBoarding Description will goes here which will be of 2 line max'),
  ];

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OnBoardingNotifier>(context, listen: false);
    return Scaffold(body: Consumer<OnBoardingNotifier>(
      builder: (context, _, child) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: content.length,
                  onPageChanged: (val) {
                    provider.indexChanged(val);
                  },
                  itemBuilder: (ctx, count) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(content[count].image),
                        Container(
                            color: SEColors.white,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height / 2.5,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              Container(
                                child: Column(
                                  children: [
                                    Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20), child: Text(content[count].title, style: MainTheme.lightTheme.textTheme.displaySmall)),
                                    Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0), child: Text(content[count].discription, style: MainTheme.lightTheme.textTheme.bodyLarge)),
                                  ],
                                ),
                              ),
                            ]))
                      ],
                    );
                  }),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: Row(
                        children: List.generate(
                          content.length,
                          (index) => Container(
                            margin: const EdgeInsets.all(10),
                            width: provider.currentIndex == index ? 30 : 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: provider.currentIndex == index ? SEColors.primary : SEColors.anti_splash_white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (provider.currentIndex == content.length - 1) {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => AuthOptions()));
                        }
                        _pageController.nextPage(duration: const Duration(milliseconds: 1000), curve: Curves.decelerate);
                      },
                      iconSize: 60,
                      icon: const Icon(Icons.arrow_circle_right_rounded, color: SEColors.primary),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    ));
  }
}
