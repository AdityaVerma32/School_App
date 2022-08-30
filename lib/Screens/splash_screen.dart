import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void move() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacementNamed("/login");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    move();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: AlignmentDirectional.center,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 200),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Image/Background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Image.asset("assets/Logo/DOON_VALEEY_LOGO_PNG.png"),
              SizedBox(
                height: 30,
              ),
              Text("The Doon Valley Public school",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 25, color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
