import 'package:electroshoe_internship/hexagon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'See Monkey',
            style: TextStyle(fontSize: 18),
          ),
        ),
        backgroundColor: Colors.purpleAccent,
        onPressed: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Hexagon()));
        }),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          width: 270,
          height: 80,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.amber,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 221, 87, 98),
              Color.fromARGB(255, 191, 102, 142),
              Color.fromARGB(255, 124, 62, 200)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Text(
              'V e r i f y',
              style: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  wordSpacing: 0,
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.0, 4.0),
                      blurRadius: 8.0,
                      color: Color.fromARGB(255, 221, 87, 98),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
