import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/modules/home/controllers/home_controller.dart';

class Calender extends GetView<HomeController> {
  const Calender({Key? key}) : super(key: key);

  weekDay(int weekDay) {
    if (weekDay == 1) {
      return 'MON';
    } else if (weekDay == 2) {
      return 'TUE';
    } else if (weekDay == 3) {
      return 'WED';
    } else if (weekDay == 4) {
      return 'THU';
    } else if (weekDay == 5) {
      return 'FRI';
    } else if (weekDay == 6) {
      return 'SAT';
    } else if (weekDay == 7) {
      return 'SUN';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TableCalendar(
        focusedDay: controller.today.value,
        firstDay: DateTime.now().subtract(
          const Duration(days: 45),
        ),
        lastDay: DateTime.now().add(
          const Duration(days: 45),
        ),
        startingDayOfWeek: StartingDayOfWeek.saturday,
        daysOfWeekVisible: true,
        daysOfWeekHeight: 30.h,
        rowHeight: 30.h,
        headerVisible: false,
        availableGestures: AvailableGestures.horizontalSwipe,
        calendarFormat: CalendarFormat.week,
        onDaySelected: (selectedDate, focusDate) {
          controller.onDaySelected(selectedDate);
          print(selectedDate);
        },
        selectedDayPredicate: (day) => isSameDay(day, controller.today.value),
        daysOfWeekStyle: DaysOfWeekStyle(
          dowTextFormatter: (date, locale) {
            return weekDay(date.weekday);
          },
          weekdayStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.itemColor,
          ),
          weekendStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.itemColor,
          ),
        ),
        calendarStyle: CalendarStyle(
          isTodayHighlighted: true,
          defaultTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.itemColor,
          ),
          weekendTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.itemColor,
          ),
          holidayTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.itemColor,
          ),
          outsideTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.itemColor,
          ),
          selectedTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.redSelectedColor,
          ),
          todayTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: AppColors.itemColor,
          ),

          todayDecoration: const BoxDecoration(
            color: AppColors.bottomNavColor,
          ),
          selectedDecoration: const BoxDecoration(
            color: AppColors.bottomNavColor,
          ),
        ),
      ),
    );
  }
}
