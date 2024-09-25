import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_layout_builder/responsive_layout_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:resume/utils/styles.dart';

class Skillset extends StatelessWidget {
  const Skillset({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
        defaultSize: LayoutSize.desktop,
        builder: (context, size) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Skills",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.subText(12.sp)
                            .copyWith(color: AppColors.subText)
                        : AppStyles.subText(20.sp)
                            .copyWith(color: AppColors.subText)),
                const Gap(10),
                Text("C++",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
                const Gap(5),
                Text("Python",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
                const Gap(5),
                Text("ROS",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
                const Gap(5),
                Text("CUDA C++",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
                const Gap(5),
                Text("Docker",
                    style: size.size == LayoutSize.desktop ||
                            size.orientation == Orientation.landscape
                        ? AppStyles.normalText()
                        : AppStyles.normalText(size: 18.sp)),
              ]);
        });
  }
}
