import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_11/generated/assets.dart';
import 'package:flutter_day_11/ui/task_3/task_3_3.dart';
import 'package:flutter_day_11/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Task3_2 extends StatelessWidget {
  const Task3_2({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(CupertinoIcons.back, size: 22.w),
        ),
        border: const Border.fromBorderSide(BorderSide.none),
        backgroundColor: Colors.white,
        middle: const Text('Popular Show'),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.ellipsis_vertical, size: 22.w),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 20.h),
                      child: Image.asset(
                        Assets.images0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    14.height,
                    Row(
                      children: [
                        Expanded(
                          child: ZoomTapAnimation(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 14.h),
                              margin: EdgeInsets.only(left: 25.w),
                              decoration: BoxDecoration(
                                  color: const Color(0xff7d6bea),
                                  borderRadius: BorderRadius.circular(18.r)),
                              alignment: Alignment.center,
                              child: const Text(
                                'Play All Show',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        30.width,
                        Expanded(
                          child: ZoomTapAnimation(
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => Task3_3(),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 14.h),
                                margin: EdgeInsets.only(right: 25.w),
                                decoration: BoxDecoration(
                                    color: const Color(0xfff1f0f8),
                                    borderRadius: BorderRadius.circular(18.r)),
                                alignment: Alignment.center,
                                child: const Text(
                                  'Subscribe',
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    30.height,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '12 Popular Show',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                                color: const Color(0xff3f0f94)),
                          ),
                          const ZoomTapAnimation(
                            child: Text(
                              'See All',
                              style: TextStyle(
                                color: Color(0xffaca8bd),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    20.height,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0; i < 5; i++)
                            ZoomTapAnimation(
                              child: Padding(
                                padding: EdgeInsets.all(8.w),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.r),
                                      child: Image.asset(
                                        'assets/images/$i.png',
                                        width: 100.w,
                                        height: 80.h,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    18.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                            [
                                              'Enjoy',
                                              'Closed Mondays',
                                              'Mythical Meals',
                                              'Code Switch',
                                              'Starlight '
                                            ][i],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp,
                                                color:
                                                    const Color(0xff3f0f94))),
                                        4.height,
                                        Text(
                                          [
                                            'Socially Buzzed',
                                            'Mashup Inspiration',
                                            'Food & History Myths',
                                            'Language Hacks',
                                            'Space in Bites'
                                          ][i],
                                          style: const TextStyle(
                                            color: Color(0xffaca8bd),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(3.r),
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff1f0f8),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child:
                                          const Icon(Icons.play_arrow_outlined),
                                    )
                                  ],
                                ),
                              ),
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            /// Custom Bottom Navigation Bar
            Container(
              height: 70.h,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.iconsHome),
                      const Text(
                        'Home',
                        style: TextStyle(
                            color: Color(0xff6B69D9),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.iconsCategory),
                      const Text(
                        'Categories',
                        style: TextStyle(color: Color((0xff94A3B8))),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.iconsPlaylist),
                      const Text(
                        'Playlist',
                        style: TextStyle(color: Color((0xff94A3B8))),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.iconsUser),
                      const Text(
                        'Profile',
                        style: TextStyle(color: Color((0xff94A3B8))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
