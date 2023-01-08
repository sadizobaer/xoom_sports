import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_item_view.dart';

class HomeBodySection extends StatelessWidget {
  const HomeBodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      padding: EdgeInsets.all(0.sp),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return HomeItemView(
          firstIndex: index,
        );
      },
    );
  }
}
