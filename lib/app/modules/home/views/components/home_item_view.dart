import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/routes/app_pages.dart';
import 'package:xoom_sports/app/utilities/images.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/custom_clip_path.dart';
import 'package:xoom_sports/app/modules/home/controllers/home_controller.dart';

class HomeItemView extends GetView<HomeController> {
  final int firstIndex;
  const HomeItemView({
    Key? key,
    required this.firstIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.h),
        Row(
          children: [
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Premier League'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 15.sp,
                        color: AppColors.bottomNavColor.withOpacity(.6),
                      ),
                ),
                Text(
                  'ukraine'.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontSize: 13.sp,
                        color: AppColors.bottomNavColor.withOpacity(.6),
                      ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.bottomNavColor.withOpacity(.6),
              ),
            ),
            SizedBox(width: 40.w),
          ],
        ),
        SizedBox(height: 2.h),
        ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            width: 360.w,
            color: AppColors.bottomNavColor.withOpacity(.1),
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 12.h),
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(Routes.MATCH_DETAILS);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                    child: SizedBox(
                      width: 360.w,
                      child: Row(
                        children: [
                          SizedBox(width: 8.w),
                          Container(
                            height: 30.h,
                            width: 30.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.itemColor,
                              ),
                              image: const DecorationImage(
                                image: AssetImage(AppImages.splash),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          SizedBox(
                            width: 86.w,
                            child: Text(
                              'chonromore ts'.toUpperCase(),
                              maxLines: 2,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    fontSize: 12.sp,
                                  ),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Container(
                            height: 28.h,
                            width: 28.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.bottomNavColor,
                            ),
                            child: Center(
                              child: Text(
                                '3-1',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                      color: AppColors.itemColor,
                                      fontSize: 12.sp,
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Container(
                            height: 30.h,
                            width: 30.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.itemColor,
                              ),
                              image: const DecorationImage(
                                image: AssetImage(AppImages.splash),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          SizedBox(
                            width: 86.w,
                            child: Text(
                              'chonromore type script'.toUpperCase(),
                              maxLines: 2,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    fontSize: 12.sp,
                                  ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              controller.changeToSelected(firstIndex, index);
                              print(controller.favorites.value[firstIndex][index]);
                            },
                            child: GetBuilder<HomeController>(
                                builder: (context) {
                                  return ImageIcon(
                                    AssetImage(controller.favorites.value[firstIndex][index] ? AppImages.favoriteFilled : AppImages.favorite,),
                                    size: 20.sp,
                                    color: controller.favorites.value[firstIndex][index]
                                        ? AppColors.redSelectedColor
                                        : AppColors.bottomNavColor,
                                  );
                                }
                            ),
                          ),
                          SizedBox(width: 12.w),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
