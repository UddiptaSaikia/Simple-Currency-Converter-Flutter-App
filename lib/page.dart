// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(1)));
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: const Text(
            'Currency Converter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Please enter the amount in USD",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, 50)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: const Text("Convert"),
                ),
              )
            ],
          ),
        ));
  }
}
