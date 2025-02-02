import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hospital/auth/otp_page.dart';
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
                color: Colors.white,
                image: 'assets/intro_images/intro-1.png',
                title: "Qo'shimcha ish daromadi",
                subtitle:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
              ),
              buildPage(
                color: Colors.white,
                image: 'assets/intro_images/intro-2.png',
                title: "Be'morlarni onlayn qabul qilish va davolash",
                subtitle:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
              ),
              buildPage(
                color: Colors.white,
                image: 'assets/intro_images/intro-3.png',
                title:
                    "Bemorlarni uylariga borib davolash va qo'shimcha daromad olish",
                subtitle:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
              ),
            ],
          ),
          Positioned(
            bottom: 35.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SwapEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey.shade300,
                    dotHeight: 10.h,
                    dotWidth: 10.w,
                  ),
                ),
                SizedBox(height: 20.h),
                InkWell(
                  onTap: () {
                    if (_controller.page!.toInt() == 2) {
                      // Finish action
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Container(
                    height: 50.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 122, 253),
                      borderRadius: BorderRadius.circular(35.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 30.w),
                        Text(
                          "Keyingisi",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(9),
                          child: Icon(Icons.navigate_next,
                              color: Colors.white, size: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OTP_page(),
                      ),
                    );
                  },
                  child: Text(
                    "O'tkazib yuborish",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Image.asset(image,
              height: MediaQuery.of(context).size.height / 2.6,
              width: MediaQuery.of(context).size.width / 1),
          SizedBox(height: 35.h),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 250.w), // Maksimal kenglik
              child: Text(
                title,
                textAlign: TextAlign.center, // Matnni o‘rtaga joylashtirish
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 80, maxWidth: 380),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
