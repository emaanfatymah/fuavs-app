// Flutter imports:
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ndialog/ndialog.dart';

void showSnackBar(
    {required String msg,
    Color? backColor,
    Color? textColor,
    IconData? iconData}) {
  Get.snackbar(
    "",
    '',
    icon: Icon(iconData ?? Icons.close_rounded, color: Colors.white),
    snackPosition: SnackPosition.TOP,
    backgroundColor: backColor ?? Colors.white,
    borderRadius: 20,
    messageText: Text(msg, style: Get.textTheme.headline6),
    margin: const EdgeInsets.all(10),
    colorText: textColor ?? Colors.blue,
    duration: const Duration(seconds: 2),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.easeOutBack,
  );
}

void showToast({required String msg, Color? backColor, Color? textColor}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: backColor ?? Colors.blue,
    textColor: textColor ?? Colors.blue,
  );
}

ProgressDialog getProgressDialog(
    {required String title,
    required String msg,
    required BuildContext context,
    Color? textColor}) {
  return ProgressDialog(
    context,
    title: Text(title, style: TextStyle(color: textColor ?? Colors.blue)),
    message: Text(msg, style: TextStyle(color: textColor ?? Colors.blue)),
    dismissable: false,
    blur: 2,
  );
}