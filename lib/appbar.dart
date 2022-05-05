import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarEx extends StatefulWidget {
  const AppbarEx({Key? key}) : super(key: key);

  @override
  _AppbarExState createState() => _AppbarExState();
}

class _AppbarExState extends State<AppbarEx> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.04),
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                          )
                        ],
                      ),
                      child: SvgPicture.asset(
                          "assets/≡ƒôì Leading Icon l Use High Emphasis.svg"),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.04),
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                          )
                        ],
                      ),
                      child: SvgPicture.asset("assets/Group 916.svg"),
                    ),
                  ),
                  // assets/Group 917.svg
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.09),
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/Group 917.svg"),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text(
                          "Welcome,Mypcot.!!",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          "here is my dashboard",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.04),
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                        ),
                        child: SvgPicture.asset("assets/Group 922.svg")),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 25, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80)),
                      child: SvgPicture.asset(
                          "assets/orders-illustration-image.svg"),
                    ),
                  ),
                  Positioned(
                    top: 160,
                    // left: 55,
                    child: Container(
                      height: 20,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber),
                      child: Text(
                        "order",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}