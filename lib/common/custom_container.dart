import 'package:flutter/material.dart';
import 'package:foodly/constants/constants.dart';

class CustomContainer extends StatelessWidget {const
  CustomContainer({super.key, required this.containerContent});

  final Widget containerContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.75,
        width: width,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: Container(
            width: width,
            color: kOffWhite,
            child: SingleChildScrollView(
              child: containerContent,
            ),
          ),
        ));
  }
}
