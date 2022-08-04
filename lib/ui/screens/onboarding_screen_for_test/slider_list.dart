import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String maskImage;
  final String desc;

  OnboardingContents(
      { this.title, this.image,this.maskImage ,this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track Your work and get the result",
    image: "assets/images/image 99.png",
    maskImage: 'assets/images/Mask.png',
    desc: "Remember to keep track of your professional accomplishments.",
  ),
  OnboardingContents(
    title: "Stay organized with team",
    image: "assets/images/Rectangle 11.png",
    maskImage: 'assets/images/Mask.png',
    desc:
    "But understanding the contributions our colleagues make to our teams and companies.",
  ),
  OnboardingContents(
    title: "Get notified when work happens",
    image: "assets/images/Rectangle 11 (1).png",
    maskImage: 'assets/images/Mask.png',
    desc:
    "Take control of notifications, collaborate live or on your own time.",
  ),
];