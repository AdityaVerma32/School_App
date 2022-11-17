import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: App_BAR(context),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: ListView(
          children: <Widget>[
            first_Box(),
            block2(context),
            block3(),
            block4(),
            block5(),
          ],
        ),
      ),
    );
  }
}

InkWell App_BAR(BuildContext context) {
  return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                titlePadding: EdgeInsets.all(3),
                title: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.zero,
                      height: 180,
                      width: 150,
                      child: Image.asset(
                        "assets/Image/profile_photo.jpg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 180,
                      width: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              opacity: 0.2,
                              image: AssetImage(
                                  "assets/Logo/DOON_VALEEY_LOGO_PNG.png"))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Shourya Verma",
                            style: GoogleFonts.lobster(fontSize: 20),
                          ),
                          Text(
                            "XI SC - C.V. RAMAN\n(DB011804563)",
                            style: GoogleFonts.lato(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                )));
      },
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20.0,
          child: CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage("assets/Image/profile_photo.jpg")),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              "Shourya Verma",
              style: GoogleFonts.arvo(),
            ),
            Text(
              "XI SC - C.V. RAMAN(DB011804563)",
              style: GoogleFonts.lato(fontSize: 10),
            )
          ],
        )
      ]));
}

Container first_Box() {
  return Container(
    height: 170,
    color: Colors.white,
    child: Row(
      children: [
        SizedBox(width: 20),
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              height: 150,
              width: 150,
              child: Image.asset("assets/Logo/doon_valley.png"),
            ),
          ],
        ),
        Text(
          "THE DOON VALLEY\nPUBLIC SCHOOL",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Container block2(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(1),
    //color: Colors.black,
    height: 120,
    child: Row(children: [
      Expanded(
        child: Container(
          height: 120,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/profile");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
                Text(
                  "My Profile",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          color: Color(0xffda70d6),
        ),
      ),
      SizedBox(
        width: 1,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.dashboard,
              size: 60,
              color: Colors.white,
            ),
            Text(
              "Dashboard",
              style: TextStyle(color: Colors.white),
            )
          ]),
          color: Colors.blue,
        ),
      ),
      SizedBox(
        width: 1,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.timelapse_rounded,
              size: 60,
              color: Colors.white,
            ),
            Text(
              "Attendence",
              style: TextStyle(color: Colors.white),
            )
          ]),
          color: Color.fromARGB(255, 243, 63, 50),
        ),
      )
    ]),
  );
}

Container block3() {
  return Container(
    padding: EdgeInsets.all(1),
    //color: Colors.black,
    height: 120,
    child: Row(children: [
      Expanded(
        child: Container(
          height: 120,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.event_available,
              color: Colors.white,
              size: 60,
            ),
            Text(
              "Leaves",
              style: TextStyle(color: Colors.white),
            )
          ]),
          color: Color.fromARGB(255, 210, 170, 58),
        ),
      ),
      SizedBox(
        width: 1,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.currency_rupee_outlined,
              color: Colors.white,
              size: 60,
            ),
            Text(
              "Fees",
              style: TextStyle(color: Colors.white),
            )
          ]),
          color: Color.fromARGB(255, 243, 63, 50),
        ),
      ),
      SizedBox(
        width: 1,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.book_sharp,
                size: 60,
                color: Colors.white,
              ),
              Text(
                "Home Work",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          color: Color.fromARGB(255, 76, 175, 149),
        ),
      )
    ]),
  );
}

Container block4() {
  return Container(
    padding: EdgeInsets.all(1),
    //color: Colors.black,
    height: 120,
    child: Row(children: [
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
                size: 60,
              ),
              Text(
                "Time Table",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          color: Colors.purple,
        ),
      ),
      SizedBox(
        width: 1,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.school_rounded,
                color: Colors.white,
                size: 60,
              ),
              Text(
                "Exam Result",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          color: Color.fromARGB(255, 59, 156, 130),
        ),
      ),
      SizedBox(
        width: 1,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.filter_outlined,
                color: Colors.white,
                size: 60,
              ),
              Text(
                "Gallery",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          color: Colors.blue,
        ),
      )
    ]),
  );
}

Container block5() {
  return Container(
    padding: EdgeInsets.all(1),
    //color: Colors.black,
    height: 120,
    child: Row(children: [
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit_calendar_outlined,
                color: Colors.white,
                size: 60,
              ),
              Text(
                "Events",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          color: Color.fromARGB(255, 240, 187, 13),
        ),
      ),
      SizedBox(
        width: 1,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.autorenew,
                color: Colors.white,
                size: 60,
              ),
              Text(
                "Circular",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          color: Colors.blue,
        ),
      ),
      SizedBox(
        width: 1,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.file_download,
                color: Colors.white,
                size: 60,
              ),
              Text(
                "Study Content",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          color: Color.fromARGB(255, 251, 198, 7),
        ),
      )
    ]),
  );
}
