import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_11/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Task3_3 extends StatelessWidget {
  const Task3_3({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(CupertinoIcons.back, size: 22.w),
        ),
        border: const Border.fromBorderSide(BorderSide.none),
        backgroundColor: Colors.white,
        middle: const Text('Subscribe'),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.ellipsis_vertical, size: 22.w),
        ),
      ),
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                20.height,
                const Text(
                  'Subscribe Your Favorite Podcast Authores. Or You Can Skip It For Now.',
                  style: TextStyle(
                    color: Color(0xffaca8bd),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                25.height,
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.h),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.r),
                          child: Image.asset(
                            'assets/images/$i.png',
                            width: 90.w,
                            height: 90.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        10.width,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              [
                                'The Smith Comedy\nShow',
                                'The Boy Who Flew\nShow',
                                'Community Best\nShow',
                                'One Week Wonders\nShow',
                                'The Boy Who Flew\nShow '
                              ][i],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff243060),
                                fontSize: 16.sp,
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  '657 podcasts',
                                  style: TextStyle(
                                    color: Color(0xffaca8bd),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                ZoomTapAnimation(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.h, horizontal: 18.w),
                                    margin: EdgeInsets.only(left: 25.w),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff7d6bea),
                                      borderRadius: BorderRadius.circular(14.r),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'Subscribe',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
