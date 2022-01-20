import 'package:flutter/material.dart';
import 'package:pdpui2/class_page.dart';
import 'package:pdpui2/home_page.dart';
import 'package:pdpui2/second_page.dart';
import 'package:shake/shake.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FavoritePage extends StatefulWidget {
  FavoritePage({Key? key}) : super(key: key);

  static const String id = "favorite_page";

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final PageController _controller = PageController();
  late ShakeDetector detector;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    detector = ShakeDetector.autoStart(shakeCountResetTime: 1,onPhoneShake: (){
      Navigator.pushReplacementNamed(context, SecondPage.id);
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    detector.stopListening();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              color: Colors.deepOrange,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    "Shake the PHONE",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Telefonni silkiting",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 240,
                        child: PageView(
                          controller: _controller,
                          children: [
                            Column(
                              children:  const [
                                Text("Your favourite", style: TextStyle(color: Colors.white, fontSize: 22),),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("A flutter package to detect phone shakes. Adjustable G-force and reset periods.",
                                style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                                ],
                            ),
                            Column(
                              children:  const [
                                Text("Your favourite", style: TextStyle(color: Colors.white, fontSize: 22),),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("A flutter package to detect phone shakes. Adjustable G-force and reset periods.",
                                  style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                              ],
                            ),
                            Column(
                              children:  const [
                                Text("Your favourite", style: TextStyle(color: Colors.white, fontSize: 22),),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("A flutter package to detect phone shakes. Adjustable G-force and reset periods.",
                                  style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                              ],
                            ),

                          ],
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect:  const ExpandingDotsEffect(
                          activeDotColor: Colors.white,
                          dotHeight: 12,
                          dotWidth: 12,
                          strokeWidth: 5,
                          radius: 20,
                          dotColor: Colors.black
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(
                      //
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(35),
                              topLeft: Radius.circular(35)),
                          color: Color(0xffFFB168)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 45,
                            width: 280,
                            child: MaterialButton(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            elevation: 10,
                            color: Colors.green,
                            onPressed: () {  },
                            child: const Text("Get Started",
                            style: TextStyle(color: Colors.white,fontSize: 15),),),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 45,
                            width: 280,
                            child: MaterialButton(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              elevation: 10,
                              color: Colors.black,
                              onPressed: () {  },
                              child: const Text("Log in",
                                style: TextStyle(color: Colors.white,fontSize: 15),),),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
