import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 240, 255),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 42,
                    height: 42,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: const BorderSide(width: 1)),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: const Icon(
                          Icons.chevron_left,
                          size: 18,
                        )),
                  ),
                  Center(
                      widthFactor: double.infinity,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 40),
                          const CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 50,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Dani Daneswara',
                            style: GoogleFonts.archivoBlack(fontSize: 30),
                          ),
                          Text(
                            '362358302048',
                            style: GoogleFonts.archivo(
                                fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ))
                ])));
  }
}
