import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Map<String, String>> categories = [
    {"title": "Shifokor mutaxasis", "image": "assets/home/doctor.png"},
    {"title": "Kichik tibbiy hodim", "image":  "assets/home/jurnal.png",},
    {"title": "Psixolog hodim", "image": "assets/home/bussinesman.png",},
    {"title": "Massaj hodim", "image": "assets/home/hand.png",},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 90.h,
          ),
          Center(
            child: Image.asset(
              "assets/home/heart.png",
              height: MediaQuery.of(context).size.height / 6.2,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Text(
            "Yo'nalishni tanlang",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Siz qaysi yunlishda ishlaysz ?",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17.sp),
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                         EdgeInsets.only(bottom: 30, left: 15, right: 15,),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30.h,  left: 13, right: 59.r),
                              child: Text( categories[index]["title"]!, textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w800),),
                            ),

                          Image.asset(categories[index]["image"]!, height: 120.h, width: 120.w, fit: BoxFit.cover,)
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
