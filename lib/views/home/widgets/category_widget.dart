import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/controllers/category_controller.dart';
import 'package:foodly/views/categories/all_categories.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({
    super.key,
    this.category,
  });

  var category;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategogryController());
    return GestureDetector(
      onTap: () {
        if (controller.categoryValue == widget.category['_id']) {
          controller.updateCategory = '';
          controller.updateTitle = '';
        } else if (widget.category['value'] == 'more') {
          Get.to(() => const AllCategories(),
              transition: Transition.fadeIn,
              duration: const Duration(milliseconds: 900));
        } else {
          controller.updateCategory = widget.category['_id'];
          controller.updateTitle = widget.category['title'];
        }
      },
      child: Obx(() => Container(
        margin: EdgeInsets.only(right: 5.w),
        padding: EdgeInsets.only(top: 4.h),
        width: width * 0.19,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color:  controller.categoryValue == widget.category['_id'] ? kSecondary : kOffWhite, width: .5.h),),
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
              child: Image.network(
                widget.category['imageUrl'],
                fit: BoxFit.contain,
              ),
            ),
            ReusableText(
                text: widget.category['title'],
                style: appStyle(12, kDark, FontWeight.normal))
          ],
        ),
      ))
      );
  }
}
