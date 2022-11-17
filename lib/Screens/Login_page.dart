import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formfeild = GlobalKey<FormState>();
  final IDcontroller = TextEditingController();
  final passwordController = TextEditingController();
  final number = '+919045912512';

  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SafeArea(
          child: Form(
            key: _formfeild,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 120,
                  ),
                  Image.asset(
                    "assets/Logo/doon_valley.png",
                    height: 150,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("The Doon Valley Public School Deoband",
                      style: GoogleFonts.robotoSlab(
                          fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      controller: IDcontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        hintText: "User ID",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) return "Enter email";
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      obscureText: pass,
                      controller: passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                          hintText: "Password",
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                pass = !pass;
                              });
                            },
                            child: Icon(
                                pass ? Icons.visibility : Icons.visibility_off),
                          )),
                      validator: (value) {
                        if (value!.isEmpty)
                          return "Enter value";
                        else if (passwordController.text.length < 8)
                          return "Length must be atleast 8";
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(250, 0, 10, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formfeild.currentState!.validate()) {
                            Navigator.of(context).pushReplacementNamed("/home");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue.shade900),
                        child: Text(
                          "Login",
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text("Need Help? Contact Us On"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () async {
                              FlutterPhoneDirectCaller.callNumber(
                                  '+919045912512');
                            },
                            child: Icon(Icons.call))
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
