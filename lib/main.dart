import 'package:animated_page_transition/animated_page_transition.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_login_ui/login.dart';
import 'package:simple_login_ui/register.dart';
import 'package:simple_login_ui/splash_screen.dart';
import 'package:transition/transition.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fitHeight,
              opacity: 0.1),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromRGBO(247, 240, 229, 1),
                Color.fromRGBO(247, 240, 229, 1),
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/icon.png",
                  scale: 2,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              const Text(
                "~ Coffee House ~",
                style: TextStyle(fontFamily: "Go Letter", fontSize: 55),
              ),
              // SizedBox(height: 15,),
              Expanded(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "We don't make your coffee",
                          style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "We make your day",
                          style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    child: Padding(padding: EdgeInsets.only(bottom: 180)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                Transition(
                                    child: Register(),
                                    transitionEffect:
                                        TransitionEffect.RIGHT_TO_LEFT));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(74, 46, 44, 1),
                                    width: 1),
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            child: const Text("Register",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                Transition(
                                    child: Login(),
                                    transitionEffect:
                                        TransitionEffect.RIGHT_TO_LEFT));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(74, 46, 44, 1),
                                    width: 1),
                                color: Colors.white54,
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                            child: const Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
