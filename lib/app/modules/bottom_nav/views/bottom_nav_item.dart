import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavItem extends StatelessWidget {
  final void Function()? onTap;
  final Color color;
  final String iconUrl;
  final String tabName;
  const BottomNavItem({
    Key? key,
    this.onTap,
    required this.color,
    required this.iconUrl,
    required this.tabName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 6.h),
          ImageIcon(
            AssetImage(iconUrl),
            color: color,
            size: 20.sp,
          ),
          SizedBox(height: 6.h),
          Text(
            tabName,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: color,
            ),
          ),
          SizedBox(height: 6.h),
        ],
      ),
    );
  }
}
