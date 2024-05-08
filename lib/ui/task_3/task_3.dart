import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_11/generated/assets.dart';
import 'package:flutter_day_11/ui/task_3/task_3_2.dart';
import 'package:flutter_day_11/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: 460.h,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.r),
                    topRight: Radius.circular(35.r),
                    bottomLeft: Radius.circular(35.r),
                    bottomRight: Radius.circular(120.r),
                  ),
                  image: const DecorationImage(
                      image: AssetImage(Assets.imagesMonkey),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff7d6bea),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff7d6bea).withOpacity(0.5),
                          blurRadius: 20.r,
                          spreadRadius: 4.r,
                        )
                      ],
                    ),
                    width: 66.w,
                    height: 66.h,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_arrow,
                      size: 30.w,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          20.height,
          Text(
            "Podcast",
            style:
                GoogleFonts.inter(fontWeight: FontWeight.w800, fontSize: 26.sp),
          ),
          10.height,
          Text(
            'Listen Your Favorite Podcast\nAnywhere, Anytime',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepPurple.withOpacity(0.4),
              fontWeight: FontWeight.w600,
            ),
          ),
          20.height,
          ZoomTapAnimation(
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => Task2_3(),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 35.w),
                decoration: BoxDecoration(
                    color: const Color(0xff7d6bea),
                    borderRadius: BorderRadius.circular(20.r)),
                alignment: Alignment.center,
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
          ),
          6.height,
          ZoomTapAnimation(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 35.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              alignment: Alignment.center,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: const Color(0xff7d6bea),
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
