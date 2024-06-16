import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var otp = "";
  final TextEditingController text1Controller = TextEditingController();
  var focusNode1 = FocusNode();
  final TextEditingController text2Controller = TextEditingController();
  var focusNode2 = FocusNode();
  final TextEditingController text3Controller = TextEditingController();
  var focusNode3 = FocusNode();
  final TextEditingController text4Controller = TextEditingController();
  var focusNode4 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Otp Screen",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 120,
                  width: 60,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        focusNode1.nextFocus();
                      }
                    },
                    controller: text1Controller,
                    keyboardType: TextInputType.number,
                    focusNode: focusNode1,
                    maxLength: 1,
                    expands: false,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: const InputDecoration(
                      hintText: "*",
                      hintStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 120,
                  width: 60,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        focusNode2.nextFocus();
                      }
                    },
                    controller: text2Controller,
                    focusNode: focusNode2,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    expands: false,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: const InputDecoration(
                      hintText: "*",
                      hintStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 120,
                  width: 60,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        focusNode3.nextFocus();
                      }
                    },
                    controller: text3Controller,
                    focusNode: focusNode3,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    expands: false,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: const InputDecoration(
                      hintText: "*",
                      hintStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 120,
                  width: 60,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        focusNode4.nextFocus();
                      }
                    },
                    controller: text4Controller,
                    focusNode: focusNode4,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    expands: false,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: const InputDecoration(
                      hintText: "*",
                      hintStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 30, 40, 0),
            child: ElevatedButton(
              onPressed: () {
                otp = text1Controller.text +
                    text2Controller.text +
                    text3Controller.text +
                    text4Controller.text;

                if (text1Controller.text.isEmpty ||
                    text2Controller.text.isEmpty ||
                    text3Controller.text.isEmpty ||
                    text4Controller.text.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Enter the otp", toastLength: Toast.LENGTH_LONG);
                } else {
                  Fluttertoast.showToast(
                      msg: otp, toastLength: Toast.LENGTH_LONG);
                  text1Controller.clear();
                  text2Controller.clear();
                  text3Controller.clear();
                  text4Controller.clear();
                }
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text("Confirm Otp"),
            ),
          )
        ],
      ),
    );
  }
}
