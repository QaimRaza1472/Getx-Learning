// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpDialog extends StatefulWidget {
  @override
  _OtpDialogState createState() => _OtpDialogState();
}

class _OtpDialogState extends State<OtpDialog> {
  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(9), bottom: Radius.circular(9.0)),
          color: Colors.white,
        ),
        width: width1 * 0.9,
        padding: const EdgeInsets.only(top: 0, bottom: 16, left: 4, right: 4),
        height: height1 * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.transparent,
                  child: const Icon(
                    size: 32,
                    Icons.close,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: width1,
              child: Column(
                children: [
                  const Text(
                    "Enter your OTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Please enter OTP sent to your email address",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: width1 * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "OTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  TextFormField(
                    cursorColor: Colors.black54,
                    cursorHeight: 20,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      hintText: "Enter your OTP here",
                      hintStyle: TextStyle(
                        fontFamily: "Montserrat-Medium",
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 45,
                    width: 130,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: "Montserrat-SemiBold",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
