import 'package:flutter/material.dart';

import 'blueCard.dart';
import 'greenCard.dart';
import 'ornageCrad.dart';

class DashbordEx extends StatefulWidget {
  const DashbordEx({Key? key}) : super(key: key);

  @override
  _DashbordExState createState() => _DashbordExState();
}

class _DashbordExState extends State<DashbordEx> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      var safePadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            height: size.height - safePadding,
            width: size.width,
          child: Column(
            children: [
              Expanded(
                  child: PageView(
                    children: [
                      BlueCard(),
                      GreenCard(),
                      OrangeCard(),
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
