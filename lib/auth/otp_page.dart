import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital/auth/create_password_page.dart';
import 'package:hospital/home/dashboard_page.dart';
import 'package:pinput/pinput.dart';

class OTP_page extends StatefulWidget {
  const OTP_page({super.key});

  @override
  State<OTP_page> createState() => _OTP_pageState();
}

class _OTP_pageState extends State<OTP_page> {
  final TextEditingController _pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Telefon raqamni tasdiqlang",
          style: TextStyle(color: Colors.black, fontSize: 18.sp),
        ),
      ),
      body: Column(
        children: [
          Center(
              child: Image.asset(
            "assets/auth/sms.png",
            fit: BoxFit.cover,
            height: 170.h,
            width: 170.w,
          )),
          Text(
            "+998 77 000 77 77",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            child: Text(
              "Telefon raqamiga 4 xonali kod yuborildi ushbu kodni kiriting !",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 17.sp),
            ),
          ),
          SizedBox(height: 30.h,),
          Pinput(
            controller: _pinController,
            length: 4,
            pinAnimationType: PinAnimationType.fade,
            onCompleted: (pin) {
              // PIN kod tugagach boshqa sahifaga o'tish
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreatePasswordPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
