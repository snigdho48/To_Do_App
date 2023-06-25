import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onboarding_page_controller.dart';

class OnboardingPageView extends GetView<OnboardingPageController> {
  const OnboardingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller;
    return const Scaffold(
      body: Center(
        child: Text(
          'OnboardingPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
