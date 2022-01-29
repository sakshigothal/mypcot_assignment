import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sort,
              color: Colors.black,
            )),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 400),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: const Color(0xff33a1cc),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(80)),
                        child:
                            SvgPicture.asset("assets/orders-illustration-image.svg")),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Orders"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xffFE804e))),
                    ),
                  ],
                ),

                Container(
                  color: Colors.white,
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("02",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Text("   pending",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      Text("Orders from", style: TextStyle(),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
