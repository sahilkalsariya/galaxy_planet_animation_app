import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import 'Global.dart';
import 'main.dart';

class Details extends StatefulWidget {

  int index;

  Details({Key? key,required this.index}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  final Duration initialDelay = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${AppString.planets[widget.index]['name']}",
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Myapp()));
            });
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bg_stars.png')),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.blueAccent,
              ]),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: DelayedDisplay(
                delay: Duration(seconds: initialDelay.inSeconds + 1),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white30, width: 3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ModelViewer(
                    src: '${AppString.planets[widget.index]['file']}',
                    ar: true,
                    autoRotate: true,
                    cameraControls: true,
                    disablePan: false,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: ListView(
                  padding: EdgeInsets.all(15),
                  children: [
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 2),
                      child: Text(
                        "LENGTH OF YEAR",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 3),
                      child: Text(
                        "${AppString.planets[widget.index]['year']}",
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 4),
                      child: Text(
                        "PLANET TYPE",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 5),
                      child: Text(
                        "${AppString.planets[widget.index]['type']}",
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 6),
                      child: Text(
                        "DISTANCE",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 7),
                      child: Text(
                        "${AppString.planets[widget.index]['radius']}",
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 8),
                      child: Text(
                        "DETAILS",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 9),
                      child: Text(
                        "${AppString.planets[widget.index]['des']}",
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
