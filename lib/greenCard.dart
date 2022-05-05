import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:sparkline/sparkline.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GreenCard extends StatefulWidget {
  const GreenCard({Key? key}) : super(key: key);

  @override
  _GreenCardState createState() => _GreenCardState();
}

class _GreenCardState extends State<GreenCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 15, right: 10, left: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff31ce95),
            ),
            width: double.infinity,
            // height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30, bottom: 15),
                  child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(200)),
                      child: SvgPicture.asset(
                          "assets/customers-illustration-image.svg")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child:  Text("View Customers",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(15, allowFontScalingSelf: true),
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  )),),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffec316a))),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 170,
          bottom: 190,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffec316a),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 4, right: 5, left: 5),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Row(
                            children: [
                              Text(
                                "15",
                               style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true),
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  )),
                              ),
                              Text(
                                "  New Customers",
                                style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(13, allowFontScalingSelf: true),
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 220,
          bottom: 95,
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: showGraph()
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     right: 10,
                  //     left: 10,
                  //   ),
                  //   child: Column(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(
                  //             top: 17, right: 10, left: 10),
                  //         child: Row(
                  //           children: [
                  //             Text(
                  //               "10",
                  //               style: TextStyle(
                  //                   fontSize: 25, fontWeight: FontWeight.bold),
                  //             ),
                  //             Text(
                  //               "   Active",
                  //               style: TextStyle(color: Colors.grey),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(bottom: 10),
                  //         child: Text(
                  //           "Subscriptions",
                  //           style: TextStyle(),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: 190,
          child: Container(
            width: 50,
            height: 50.0,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                image: NetworkImage(
                    "https://wikibio.in/wp-content/uploads/2018/07/Katrina-Kaif.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 225,
          child: Container(
            width: 50,
            height: 50.0,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                image: NetworkImage(
                    "https://wikibio.in/wp-content/uploads/2018/07/Katrina-Kaif.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 260,
          child: Container(
            width: 50,
            height: 50.0,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                image: NetworkImage(
                    "https://wikibio.in/wp-content/uploads/2018/07/Katrina-Kaif.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          left: 200,
          bottom: 25,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "10",
                              style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(25, allowFontScalingSelf: true),
                    // color: Colors.white,
                    fontWeight: FontWeight.w800,
                  )),
                            ),
                            Text(
                              " Active",
                              style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(13, allowFontScalingSelf: true),
                    color: Color(0xff2c3d63),
                    fontWeight: FontWeight.w800,
                  )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12, left: 10),
                        child: Text(
                          "Customers",
                          style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(13, allowFontScalingSelf: true),
                    color: Color(0xff2c3d63),
                    fontWeight: FontWeight.w800,
                  )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget showGraph() {
    math.Random random = new math.Random();

    List<double> _generateRandomData(int count) {
      List<double> result = <double>[];
      for (int i = 0; i < count; i++) {
        result.add(random.nextDouble() * 100);
      }
      return result;
    }

    var data = _generateRandomData(5);
    return Container(
      height: 90,
      width: 150,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Sparkline(
              data: data,
              lineColor: Colors.green,
              fillMode: FillMode.below,
              fillColor: Colors.green[100],
              pointSize: 5.0,
              pointColor: Colors.amber,
            ),
          ),
          Positioned(
            left: 10,
            top: 15,
            child: Row(
              children: [
                Text(
                  "1.8%",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_upward,
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
