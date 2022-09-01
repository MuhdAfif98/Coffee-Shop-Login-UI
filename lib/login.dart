import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            Color.fromRGBO(247, 240, 229, 1),
            Color.fromRGBO(247, 240, 229, 1)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Forgot password?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ScaleTap(
                    onPressed: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(74, 46, 44, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      child: const Text(
                        "Sign In",
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
                children: [
                  Container(
                    width: 100,
                    height: 5,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(247, 240, 229, 1),
                              Color.fromRGBO(74, 46, 44, 0.5),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "or continue with",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 5,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(247, 240, 229, 1),
                              Color.fromRGBO(74, 46, 44, 0.5),
                            ],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ScaleTap(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(247, 240, 229, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(74, 46, 44, 0.5),
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/google.png",
                        scale: 2,
                      ),
                    ),
                  ),
                  ScaleTap(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(247, 240, 229, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(74, 46, 44, 0.5),
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/facebook.png",
                        scale: 2,
                      ),
                    ),
                  ),
                  ScaleTap(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(247, 240, 229, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(74, 46, 44, 0.5),
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/twitter.png",
                        scale: 2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Not a member yet?"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Register now",
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
    );
  }
}
