import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:example/blueCard.dart';
import 'package:example/greenCard.dart';
import 'package:example/ornageCrad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/avd.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var safePadding = MediaQuery.of(context).padding.top;
    ScreenUtil.init(context, designSize: Size(360, 720));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 30,
                width: 40,
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
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 6, right: 6, top: 5, bottom: 5),
            child: imageView(),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.3,
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 910.svg"),
                  Text(
                    "Home",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize:
                          ScreenUtil().setSp(12, allowFontScalingSelf: true),
                      color: Color(0xff2c3d63),
                      fontWeight: FontWeight.w400,
                    )),
                    // TextStyle(color: Color(0xff2c3d63)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 912.svg"),
                  Text(
                    "Customers",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize:
                          ScreenUtil().setSp(12, allowFontScalingSelf: true),
                      color: Color(0xff2c3d63),
                      fontWeight: FontWeight.w400,
                    )),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 913.svg"),
                  Text(
                    "Khata",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize:
                          ScreenUtil().setSp(12, allowFontScalingSelf: true),
                      color: Color(0xff2c3d63),
                      fontWeight: FontWeight.w400,
                    )),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 914.svg"),
                  Text(
                    "Orders",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize:
                          ScreenUtil().setSp(12, allowFontScalingSelf: true),
                      color: Color(0xff2c3d63),
                      fontWeight: FontWeight.w400,
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff2c3d63),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          height: size.height - safePadding,
          width: size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Welcome,Mypcot !!",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: ScreenUtil()
                                .setSp(20, allowFontScalingSelf: true),
                            color: Color(0xff2c3d63),
                            fontWeight: FontWeight.w500,
                          )),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "here is my dashboard...",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: ScreenUtil()
                                .setSp(12, allowFontScalingSelf: true),
                            color: Color(0xff2c3d63),
                            fontWeight: FontWeight.w400,
                          )),
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
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BlueCard(),
                    GreenCard(),
                    OrangeCard(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "January 23,2021",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: ScreenUtil()
                                    .setSp(13, allowFontScalingSelf: true),
                                color: Color(0xff2c3d63),
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                            Text(
                              "Today",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: ScreenUtil()
                                    .setSp(16, allowFontScalingSelf: true),
                                color: Color(0xff2c3d63),
                                fontWeight: FontWeight.w800,
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Text(
                                "Timeline",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: ScreenUtil()
                                      .setSp(16, allowFontScalingSelf: true),
                                  color: Color(0xff2c3d63),
                                  fontWeight: FontWeight.w800,
                                )),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_today_outlined),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "JAN,2021",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: ScreenUtil()
                                      .setSp(13, allowFontScalingSelf: true),
                                  color: Color(0xff2c3d63),
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      child: DatePicker(
                        DateTime.now(),
                        width: 60,
                        height: 80,
                        controller: _controller,
                        initialSelectedDate: DateTime.now(),
                        selectionColor: Colors.white,
                        selectedTextColor: Colors.green,
                        inactiveDates: [
                          DateTime.now().add(Duration(days: 3)),
                          DateTime.now().add(Duration(days: 4)),
                          DateTime.now().add(Duration(days: 7))
                        ],
                        onDateChange: (date) {
                          // New date selected
                          setState(() {
                            _selectedValue = date;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
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
                      border: Border.all(width: 0.3),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New order created",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                fontSize: ScreenUtil()
                                    .setSp(20, allowFontScalingSelf: true),
                                color: Color(0xff2c3d63),
                                fontWeight: FontWeight.w800,
                              )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(
                                "New order created with order",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: ScreenUtil()
                                      .setSp(17, allowFontScalingSelf: true),
                                  color: Color(0xff2c3d63),
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                            ),
                            Text(
                              "09:00 AM",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffFE804e),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xffFE804e),
                            )
                          ],
                        ),
                        Container(
                          width: 80,
                          height: 80.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("assets/Group 900.svg"),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xffFE804e),
                            // image: DecorationImage(
                            //   image: NetworkImage(
                            //       "https://wikibio.in/wp-content/uploads/2018/07/Katrina-Kaif.jpg"),
                            //   fit: BoxFit.cover,
                            // ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
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
