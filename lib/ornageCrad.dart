import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrangeCard extends StatefulWidget {
  const OrangeCard({Key? key}) : super(key: key);

  @override
  _OrangeCardState createState() => _OrangeCardState();
}

class _OrangeCardState extends State<OrangeCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffdcb223),
            ),
            width: double.infinity,
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                  child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(200)),
                      child: SvgPicture.asset(
                          "assets/subscriptions-illustration-image.svg")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,),
                  child: ElevatedButton(
                    onPressed: () {},
                    child:  Text("Subsciptions",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(12, allowFontScalingSelf: true),
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
                            MaterialStateProperty.all(Color(0xff223dc4))),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 190,
          bottom: 190,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff223dc4),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 4, right: 13, left: 13),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Row(
                            children: [
                              Text(
                                "03",
                                style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true),
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  )),
                              ),
                              Text(
                                "    deliveries",
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
          left: 210,
          bottom: 110,
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
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 17, right: 10, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "10",
                             style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(25, allowFontScalingSelf: true),
                    color: Color(0xff2c3d63),
                    fontWeight: FontWeight.w800,
                  )),
                            ),
                            Text(
                              "   Active",
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
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Subscriptions",
                          style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(13, allowFontScalingSelf: true),
                    color: Color(0xff2c3d63),
                    fontWeight: FontWeight.w800,
                  )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: 205,
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
          left: 235,
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
          left: 265,
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
          left: 210,
          bottom: 35,
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
                              "119",
                              style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(25, allowFontScalingSelf: true),
                    color: Color(0xff2c3d63),
                    fontWeight: FontWeight.w800,
                  )),
                            ),
                            Text(
                              "   pending",
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
                        padding: const EdgeInsets.only(bottom: 12, left: 20),
                        child: Text(
                          "Deliveries",
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

  Widget positioinWidget(double top, right, left, bottom) {
    return Positioned(
      top: top,
      left: left,
      // top: 50,
      // left: 215,
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
    );
  }
}
