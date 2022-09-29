import 'package:electroshoe_internship/button.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_border.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class Hexagon extends StatefulWidget {
  const Hexagon({super.key});

  @override
  State<Hexagon> createState() => _HexagonState();
}

class _HexagonState extends State<Hexagon> {
  @override
  Widget build(BuildContext context) {
    //color: Color(0xFFCAECFF)
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'See Button',
            style: TextStyle(fontSize: 23),
          ),
        ),
        backgroundColor: Colors.purpleAccent,
        onPressed: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Button()));
        }),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: const ShapeDecoration(
                  shadows: [
                    BoxShadow(
                      color: Color(0xFFCAECFF),
                    ),
                    BoxShadow(
                      color: Color(0xFFCAECFF),
                      blurRadius: 40,
                      offset: Offset(
                        0,
                        70,
                      ),
                    ),
                  ],
                  shape: PolygonBorder(
                      rotate: 90,
                      sides: 6,
                      borderRadius: 22.0,
                      border: BorderSide(
                          color: Color.fromARGB(255, 213, 231, 241),
                          width: 18,
                          style: BorderStyle.none))),
              child: ClipPolygon(
                sides: 6,
                borderRadius: 22.0,
                rotate: 90.0,
                boxShadows: [
                  // PolygonBoxShadow(
                  //     color: const Color.fromARGB(255, 88, 174, 224), elevation: 174.0),
                  // PolygonBoxShadow(
                  //     color: const Color.fromARGB(255, 88, 174, 224), elevation: 154.0),
                  // PolygonBoxShadow(
                  //     color: const Color.fromARGB(255, 88, 174, 224), elevation: 75.0)
                ],
                child: Container(
                  child: Image.network(
                    "https://img.freepik.com/premium-vector/mutant-ape-yacht-club-nft-artwork-collection-set-unique-bored-monkey-character-nfts-variant_361671-259.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
