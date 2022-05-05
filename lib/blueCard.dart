import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BlueCard extends StatefulWidget {
  const BlueCard({Key? key}) : super(key: key);

  @override
  _BlueCardState createState() => _BlueCardState();
}

class _BlueCardState extends State<BlueCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff33a1cc),
                  ),
                  width: double.infinity,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20, top: 30, bottom: 20),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.pink[100],
                                borderRadius: BorderRadius.circular(120)),
                            child: SvgPicture.asset(
                                "assets/orders-illustration-image.svg")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child:  Text("Orders",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(12, allowFontScalingSelf: true),
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  )),),
                          ),
                          style: ButtonStyle(
                            shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                              backgroundColor: MaterialStateProperty.all(
                                  Color(0xffFE804e))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 220,
                bottom: 70,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7, right: 10, left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "02",
                                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(25, allowFontScalingSelf: true),
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  )),
                                ),
                                Text(
                                  "   pending",
                                 style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(13, allowFontScalingSelf: true),
                    color: Color(0xff2c3d63),
                    fontWeight: FontWeight.w400,
                  )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Text(
                              "Orders from",
                              style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(14, allowFontScalingSelf: true),
                    color: Color(0xff2c3d63),
                    fontWeight: FontWeight.w400,
                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40,
                left: 230,
                child: imageView()
              ),
              Positioned(
                bottom: 40,
                left: 270,
                child: imageView()
              ),
              Positioned(
                left: 200,
                bottom: 180,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFE804e),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 4, right: 5, left: 5),
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Text(
                                    "You have 3 active \n    orders from",
                                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(15, allowFontScalingSelf: true),
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  )),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 55,
                left: 215,
                child: imageView()
              ),
              Positioned(
                top: 55,
                left: 245,
                child: imageView()
              ),
              Positioned(
                top: 55,
                left: 275,
                child: imageView()
              ),
            ],
          );
  }

  Widget imageView() {
    return Container(
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
    );
  }
}
