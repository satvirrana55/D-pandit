import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_button.dart';

class OnBoardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  OnBoardingScreen({Key? key}) : super(key: key);

  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Acharya Abhishek Garg",
      description: "न ह्यन्तोsनन्तपारस्य"
          "\n र्म कॉडस्य चोद्धव:",
      imgUrl: "assets/images/onBoarding1.png",
    ),
    const OnBoardModel(
      title: "Lorem ipsum dolor sit amet, consecrate.",
      description:
          "Set your delivery location. Choose your groceries from a wide range of our required products.",
      imgUrl: "assets/images/onboardingPandirji.png",
    ),
    const OnBoardModel(
      title: "Lorem ipsum dolor sit amet, consectetur.",
      description:
          "Set your delivery location. Choose your groceries from a wide range of our required products.",
      imgUrl: 'assets/images/onboardingPandirji.png',
    ),
    const OnBoardModel(
      title: "Lorem ipsum dolor sit amet, consectetur.",
      description:
          "Set your delivery location. Choose your groceries from a wide range of our required products.",
      imgUrl: 'assets/images/onboardingPandirji.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: OnBoard(
        pageController: _pageController,
        onDone: () {
          Get.toNamed(MyRouter.chooseUserScreen);
        },
        onBoardData: onBoardData,
        // titleStyles: AppTextStyles.textSize24With500WeightBlack,
        // descriptionStyles: AppTextStyles.textSize16With400WeightGray,
        imageHeight: 37.0,
        imageWidth: 286.0,
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 100,
          inactiveColor: AppColors.appPrimaryColor,
          activeColor: AppColors.appPrimaryColor,
          inactiveSize: Size(8, 8),
          activeSize: Size(12, 12),
        ),
        skipButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return state.isLastPage
                ? Container()
                : InkWell(
                    onTap: () {
                      Get.offAllNamed(MyRouter.chooseUserScreen);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 16.0,
                        left: 16.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: Text(
                        "Skip",
                        style: AppTextStyles.size16WithW500,
                      ),
                    ),
                  );
          },
        ),
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return CommonButton(
              state.isLastPage ? "Get Started" : "Next ",
              () {
                if (!state.isLastPage) {
                  _pageController.animateToPage(
                    state.page + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOutSine,
                  );
                } else {
                  Get.toNamed(MyRouter.chooseUserScreen);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
