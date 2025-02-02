import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital/auth/otp_page.dart';
import 'package:hospital/home/dashboard_page.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({super.key});

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.h,
            ),
            Center(
                child: Row(
              children: [
                Image.asset("assets/auth/phone_hand.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Tizimga kirish",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 21.sp),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 300),
                      child: Text(
                        "Tizimga kirish uchun telefon raqamingizni kiritishingiz kerak bo'ladi",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Telefon raqarmingiz",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                 icon: Icon(Icons.phone, color: Colors.blue,)
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Parolingizni kiriting",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.password, color: Colors.blue,)
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Parolni unitdingizmi ?",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTP_page(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 6.4),
                        Text(
                          "Tizimga kirish",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 2.w,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Oldin ro'yhatdan o'tmaganmisz ?",
                      style: TextStyle(color: Colors.grey),
                    ))),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 50.w,),
                        Icon(Icons.person_add, color: Colors.blue,),
                        Text(
                          "Ro'yhatdan o'tish",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 30.w,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
