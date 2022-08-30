import 'package:flutter/material.dart';

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
          title: Text("Shourya verma"),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: ListView(
          children: <Widget>[
            Container(
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
            ),
            block2(),
            block3(),
            block4(),
            block5(),
          ],
        ),
      ),
    );
  }
}

Container block2() {
  return Container(
    padding: EdgeInsets.all(1),
    //color: Colors.black,
    height: 120,
    child: Expanded(
      child: Row(children: [
        Expanded(
          child: Container(
            height: 120,
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
            color: Color(0xffda70d6),
          ),
        ),
        SizedBox(
          width: 1,
        ),
        Expanded(
          child: Container(
            height: 120,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
    ),
  );
}

Container block3() {
  return Container(
    padding: EdgeInsets.all(1),
    //color: Colors.black,
    height: 120,
    child: Expanded(
      child: Row(children: [
        Expanded(
          child: Container(
            height: 120,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
    ),
  );
}

Container block4() {
  return Container(
    padding: EdgeInsets.all(1),
    //color: Colors.black,
    height: 120,
    child: Expanded(
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
    ),
  );
}

Container block5() {
  return Container(
    padding: EdgeInsets.all(1),
    //color: Colors.black,
    height: 120,
    child: Expanded(
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
    ),
  );
}
