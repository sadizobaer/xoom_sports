import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TabItem extends StatelessWidget {
  final void Function()? onTap;
  final String tabName;
  final Color color;
  const TabItem({
    Key? key,
    this.onTap,
    required this.tabName,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 24.w),
        child: Text(
          tabName.toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
            color: color,
            fontSize: 13.sp,
          ),
        ),
      ),
    );
  }
}
