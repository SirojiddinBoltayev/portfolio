import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override


  _initTimer(){
    Timer(const Duration(seconds: 2),(){

      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  Example()));


    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(
      child: Lottie.asset("assets/json_ic/hi_ic.json"),
    ),);
  }
}
