import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:simple_login_ui/model/coffee.dart';

import 'model/category.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController search = TextEditingController();

  List<Category> cat = [
    Category("All", true),
    Category("Cappucino", false),
    Category("Starbucks", false),
    Category("Espresso", false),
    Category("Latte", false),
  ];

  List<Coffee> coffee = [
    Coffee("assets/coffee/americano.png", "Hot Americano", "with sugar", "90"),
    Coffee("assets/coffee/americano.png", "Hot Americano", "with sugar", "90"),
    Coffee("assets/coffee/americano.png", "Hot Americano", "with sugar", "90"),
    Coffee("assets/coffee/americano.png", "Hot Americano", "with sugar", "90"),
    Coffee("assets/coffee/americano.png", "Hot Americano", "with sugar", "90"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(247, 240, 229, 1),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Coffee',
                  style: GoogleFonts.aladin(
                      textStyle: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                TextSpan(
                  text: 'house',
                  style: GoogleFonts.aladin(
                      textStyle: const TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(195, 147, 80, 1),
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          leading: const Icon(
            Iconsax.menu_1,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Iconsax.shopping_bag,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textDirection: TextDirection.ltr,
                controller: search,
                style: GoogleFonts.robotoSlab(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600)),
                decoration: InputDecoration(
                  hintText: 'Search your coffee',
                  focusColor: Colors.white,
                  prefixIcon: const Icon(Iconsax.search_normal,
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
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: cat.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {});
                        for (int i = 0; i < cat.length; i++) {
                          if (i == index) {
                            //initial value of category
                            cat[0].selected;
                            cat[i].selected = !cat[i].selected;
                          } else if (cat[i].selected) {
                            cat[i].selected = false;
                          }
                        }
                      },
                      child: SizedBox(
                        width: 100.0,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: cat[index].selected
                                    ? const Color.fromRGBO(195, 147, 80, 1)
                                    : const Color.fromARGB(255, 212, 202, 194)),
                            child: Text(
                              cat[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: cat[index].selected
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: coffee.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 63, 64, 66),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(children: [
                            Image.asset(
                              coffee[index].image,
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              width: 120,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    coffee[index].coffee_name,
                                    style: GoogleFonts.aladin(
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    coffee[index].coffee_description,
                                    style: GoogleFonts.robotoSlab(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.normal)),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        r'$ ' + coffee[index].cost,
                                        style: GoogleFonts.aladin(
                                            textStyle: const TextStyle(
                                                fontSize: 20,
                                                color: Color.fromRGBO(
                                                    195, 147, 80, 1),
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      const Icon(
                                        Iconsax.add_circle,
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Special made for you",
                  style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //Special for you coffee
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: coffee.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:5.0),
                        child: ScaleTap(
                          onPressed: (){},
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 63, 64, 66),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Latte Premium",
                                    style: GoogleFonts.aladin(
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    "with bird nest",
                                    style: GoogleFonts.robotoSlab(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.normal)),
                                  ),
                                  Text(
                                    r'$ ' + coffee[index].cost,
                                    style: GoogleFonts.aladin(
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            color:
                                                Color.fromRGBO(195, 147, 80, 1),
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              Image.asset(
                                "assets/coffee/latte.png",
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                                width: 120,
                              ),
                            ]),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
