import 'package:flutter/material.dart';
import 'package:hospital/home/dashboard_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  static final String id = 'intro_page';
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              buildPage(
                color: Color.fromARGB(255, 45, 95, 255),
                image:
                    'assets/intro_images/intro-1.png', // Replace with your asset
                title: "Test run",
                subtitle: "A set of different tests",
              ),
              buildPage(
                color: Color.fromARGB(255, 45, 95, 255),
                image:
                    'assets/intro_images/intro-2.png', // Replace with your asset
                title: "Join the community",
                subtitle: "Compete with others, share your scores",
              ),
              buildPage(
                color: Color.fromARGB(255, 45, 95, 255),
                image:
                    'assets/intro_images/intro-3.png', // Replace with your asset
                title: "Check the leaderboard",
                subtitle: "See where you rank among others",
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SwapEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey.shade300,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(35)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10.5,
                      ),
                      Text(
                        "Keyingisi",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildPage({
    required Color color,
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 200), // Adjust image size as needed
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
