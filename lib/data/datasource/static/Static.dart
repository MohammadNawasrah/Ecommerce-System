// ignore_for_file: file_names

import 'package:ecommercesystem/data/model/OnBoardingModel.dart';

import '../../../core/constant/ImageOnBoarding.dart';

// ignore: non_constant_identifier_names
List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Choose Product",
      body:
          "We have a 100k+ product choose\nyour product from our E-\ncommerce shop.",
      image: ImageOnBoarding.OnBoardingImageOne),
  OnBoardingModel(
      title: "Easy & Safe Payment",
      body:
          "Easy Cheackout & Save Payment\nmethod.Trusted by our Customers\nfrom all over the world.",
      image: ImageOnBoarding.OnBoardingImageTwo),
  OnBoardingModel(
      title: "Track Your Order",
      body:
          "Best Tracker has been Used For\n Track your order. You'll know where\n your product is at the moment.",
      image: ImageOnBoarding.OnBoardingImageTree),
  OnBoardingModel(
      title: "Fast Delivery",
      body:
          "Reliable And Fast Delivery.We\nDelivery your product the fastest\n way possible.",
      image: ImageOnBoarding.OnBoardingImageFour)
];
