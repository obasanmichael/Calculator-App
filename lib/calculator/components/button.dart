import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget Button(String text, Color? backgroundColor, void Function()? buttonPressed){
  final defaultColor = Colors.grey.shade800;
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
          color: backgroundColor ?? defaultColor,
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(10),
      child: Material(
        elevation: 2,
        shadowColor: backgroundColor,
        color: Colors.transparent,
        child: Container(
          child: ElevatedButton(
            onPressed: buttonPressed,
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                elevation: 0,
                backgroundColor: backgroundColor ?? defaultColor,
                shadowColor: defaultColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 35),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
}
