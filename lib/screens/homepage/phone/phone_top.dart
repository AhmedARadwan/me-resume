import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:resume/utils/styles.dart';

class PhoneTop extends StatelessWidget {
  final Animation<double> animation;
  final Function()? onTap;

  const PhoneTop({
    Key? key,
    required this.onTap,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(30),
          FadeTransition(
            opacity: animation,
            child: CircleAvatar(
              radius: 24.w,
              backgroundImage: const AssetImage(
                'assets/images/AhmedRadwan.jpeg',
              ),
            ),
          ),
          const Gap(25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Ahmed Radwan',
                textAlign: TextAlign.center, style: AppStyles.titleText(28)),
          ),
          const Gap(10),
          Text(
            "Software Engineer",
            style: GoogleFonts.ptSansNarrow(
              fontSize: 19.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.subText,
            ),
          ),
          const Gap(40),
          ElevatedButton(
            onPressed: onTap,
            child: Text(
              'CONTACT ME',
              style: GoogleFonts.ptSansNarrow(
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              fixedSize: const Size(220, 60),
              backgroundColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
