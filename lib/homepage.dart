import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

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
              SizedBox(height: 15,),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const SizedBox(
                        width: 150,
                  
                        child: Card(
                          child: Text('data'),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Text("Special made for you"),
              Expanded(
                child: SizedBox(
                  height: 200,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(  ),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[200],
                        child: const Text('Heed not the rabble'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[300],
                        child: const Text('Sound of screams but the'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[400],
                        child: const Text('Who scream'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[500],
                        child: const Text('Revolution is coming...'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[600],
                        child: const Text('Revolution, they...'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
