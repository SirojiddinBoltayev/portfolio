import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:portfolio/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

/// Example app.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var imageSize = size.width * 0.2;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/background_ic.jpg"),
          ),
        ),
        child: AnimatedBackground(
          vsync: this,
          behaviour: RandomParticleBehaviour(),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.deepOrange.withOpacity(0.5),
                        Colors.indigoAccent.withOpacity(0.5)
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ParallaxStack(
                  touchBased: true,
                  layers: [
                    ParallaxLayer(
                      yRotation: 0.35,
                      xOffset: 30,
                      zRotation: 0.001,
                      xRotation: 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: ParallaxStack(
                              touchBased: true,
                              layers: [
                                ParallaxLayer(
                                  xRotation: 0.3,
                                  zRotation: 0.001,
                                  child: GestureDetector(
                                    onTap: () {
                                      print("Ishlayapti");
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(
                                                    bottom: size.height * 0.4,
                                                    left: size.width * 0.255),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      "assets/portfoli_app.png",
                                                      height: imageSize,
                                                    ))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ParallaxLayer(
                      yRotation: 0.35,
                      xOffset: 30,
                      zRotation: 0.001,
                      xRotation: 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: ParallaxStack(
                              touchBased: true,
                              layers: [
                                ParallaxLayer(
                                  xRotation: 0.3,
                                  zRotation: 0.001,
                                  child: GestureDetector(
                                    onTap: () {
                                      print("Ishlayapti");
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(
                                                    top: size.height * 0.065,
                                                    left: size.width * 0.13),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      "assets/portfoli_app.png",
                                                      height: imageSize,
                                                    ))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ParallaxLayer(
                      yRotation: 0.35,
                      xOffset: 30,
                      zRotation: 0.001,
                      xRotation: 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: ParallaxStack(
                              touchBased: true,
                              layers: [
                                ParallaxLayer(
                                  xRotation: 0.3,
                                  zRotation: 0.001,
                                  child: GestureDetector(
                                    onTap: () {
                                      print("Ishlayapti");
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                margin:  EdgeInsets.only(
                                                    bottom: size.height * 0.13, right: size.width * 0.13),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      "assets/todo_app.png",
                                                      height: imageSize,
                                                    ))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ParallaxLayer(
                      yRotation: 0.35,
                      xOffset: 30,
                      zRotation: 0.001,
                      xRotation: 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: ParallaxStack(
                              touchBased: true,
                              layers: [
                                ParallaxLayer(
                                  xRotation: 0.3,
                                  zRotation: 0.001,
                                  child: GestureDetector(
                                    onTap: () {
                                      print("Ishlayapti");
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                margin:  EdgeInsets.only(
                                                    bottom: size.height * 0.13, right: size.width * 0.33,),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      "assets/yuksalish_2.png",
                                                      height: imageSize,
                                                    ))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ParallaxLayer(
                      yRotation: 0.35,
                      xOffset: 30,
                      zRotation: 0.001,
                      xRotation: 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: ParallaxStack(
                              touchBased: true,
                              layers: [
                                ParallaxLayer(
                                  xRotation: 0.3,
                                  zRotation: 0.001,
                                  child: GestureDetector(
                                    onTap: () {
                                      print("Ishlayapti");
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                margin:  EdgeInsets.only(
                                                    bottom: size.height * 0.4, right: size.width * 0.201),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      "assets/yuksalish.png",
                                                      height: imageSize,
                                                    ))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(width: 20.0, height: 100.0),
                           Text(
                            'SIROJ',
                            style: TextStyle(fontSize: size.width * 0.05),
                          ),
                          const SizedBox(width: 20.0, height: 100.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultTextStyle(
                                  style:  TextStyle(
                                    fontSize: size.width * 0.05,
                                    fontFamily: 'Horizon',
                                  ),
                                  child: AnimatedTextKit(
                                    repeatForever: true,
                                    animatedTexts: [
                                      RotateAnimatedText('BOLTAYEV'),
                                      RotateAnimatedText('AWESOME'),
                                      RotateAnimatedText('OPTIMISTIC'),
                                      RotateAnimatedText('DIFFERENT'),
                                    ],
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ParallaxLayer(
                      yRotation: 0.15,
                      xOffset: 30,
                      zRotation: 0.001,
                      xRotation: 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: size.width * 0.07, top: size.height * 0.06),
                            child: GestureDetector(
                              onTap: () {
                                print("Ishlayapti");
                              },
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/burger_app.png",
                                    height: imageSize,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.indigoAccent.withOpacity(0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text("All projects"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(0),
                      child: const Text("|"),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text("About me!"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
