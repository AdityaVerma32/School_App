import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profile extends StatelessWidget {
  profile({Key? key}) : super(key: key);

  List<String> specs = ["DETAILS", "HEALTH", "SUBJECTS"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 103, 70, 152),
            elevation: 0,
          ),
          drawer: Drawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
                color: Color.fromARGB(255, 103, 70, 152),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 48,
                          backgroundImage:
                              AssetImage("assets/Image/profile_photo.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                      child: Container(
                        child: Column(children: [
                          Text(
                            "SHOURYA VERMA",
                            style: GoogleFonts.lato(
                                color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "XI SC - C.V. RAMAN\n(DB011804563)",
                            style: GoogleFonts.lato(
                                color: Colors.black87, fontSize: 15),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                color: Color.fromARGB(255, 103, 70, 152),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: specs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          specs[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }),
              )
            ],
          )),
    );
  }
}
