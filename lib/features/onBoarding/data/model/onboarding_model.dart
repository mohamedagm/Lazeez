class OnboardingModel {
  final String imageLink;
  final String title;
  final String content;

  OnboardingModel({
    required this.imageLink,
    required this.title,
    required this.content,
  });
}

List<OnboardingModel> onboardingModeList = [
  OnboardingModel(
    imageLink: 'assets/images/image1.png',
    title: 'Wide Selection',
    content: 'More than 400 restaurants nationwide.',
  ),
  OnboardingModel(
    imageLink: 'assets/images/image2.png',
    title: 'Fast Delivery',
    content: 'Receive goods after 10 minutes.',
  ),
  OnboardingModel(
    imageLink: 'assets/images/image3.png',
    title: 'Order Tracking',
    content: 'Track your orders in real-time.',
  ),
  OnboardingModel(
    imageLink: 'assets/images/image4.png',
    title: 'Special offers',
    content: 'Weekly deals and discounts.',
  ),
];
