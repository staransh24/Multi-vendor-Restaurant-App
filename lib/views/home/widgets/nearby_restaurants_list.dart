import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/restaurant_widget.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190.h,
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(restaurants.length, (i) {
            var restaurant = restaurants[i];
            return RestaurantWidget(
                image: restaurant['imageUrl'].toString(),
                logo: restaurant['logoUrl'].toString(),
                title: restaurant['title'].toString(),
                time: restaurant['time'].toString(),
                rating: restaurant['ratingCount'].toString());
          }),
        ));
  }
}
