import 'package:animated_page_transition/animated_page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:transition/transition.dart';

import 'homepage.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirm_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(247, 240, 229, 1),
      ),
      child: PageTransitionReceiver(
        scaffold: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/login-icon.png",
                      scale: 1.8,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textDirection: TextDirection.ltr,
                      controller: username,
                      style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600)),
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        prefixIcon: const Icon(Iconsax.user,
                            color: Color.fromRGBO(74, 46, 44, 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(74, 46, 44, 1), width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.grey,

                        labelText: 'Username',
                        //lable style
                        labelStyle: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(74, 46, 44, 0.5),
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textDirection: TextDirection.ltr,
                      controller: username,
                      style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600)),
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        prefixIcon: const Icon(Iconsax.lock,
                            color: Color.fromRGBO(74, 46, 44, 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(74, 46, 44, 1), width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.grey,

                        labelText: 'Email',
                        //lable style
                        labelStyle: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(74, 46, 44, 0.5),
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      textDirection: TextDirection.ltr,
                      controller: username,
                      style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600)),
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Iconsax.eye,
                            color: Color.fromRGBO(74, 46, 44, 1)),
                        focusColor: Colors.white,
                        prefixIcon: const Icon(Iconsax.user,
                            color: Color.fromRGBO(74, 46, 44, 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(74, 46, 44, 1), width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.grey,

                        labelText: 'Password',
                        //lable style
                        labelStyle: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(74, 46, 44, 0.5),
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      textDirection: TextDirection.ltr,
                      controller: username,
                      style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600)),
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Iconsax.eye,
                            color: Color.fromRGBO(74, 46, 44, 1)),
                        focusColor: Colors.white,
                        prefixIcon: const Icon(Iconsax.lock,
                            color: Color.fromRGBO(74, 46, 44, 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(74, 46, 44, 1), width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.grey,

                        labelText: 'Confirm Password',
                        //lable style
                        labelStyle: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(74, 46, 44, 0.5),
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ScaleTap(
                          onPressed: () {Navigator.push(
                                context,
                                Transition(
                                    child: Homepage(),
                                    transitionEffect:
                                        TransitionEffect.RIGHT_TO_LEFT));},
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(74, 46, 44, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                        Positioned(
                            right: -20,
                            top: 1,
                            bottom: 1,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Iconsax.coffee,
                                size: 20,
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Already a member?"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Sign in now",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
