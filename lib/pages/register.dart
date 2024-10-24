import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 240, 255),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
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
                  const Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign up',
                        style: GoogleFonts.archivoBlack(fontSize: 40),
                      ),
                      Text(
                        'Before we start, please enter your details',
                        style: GoogleFonts.archivo(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 102, 102, 104)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Full Name',
                          style: GoogleFonts.archivo(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your name',
                            hintStyle: GoogleFonts.archivo(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color:
                                    const Color.fromARGB(255, 102, 102, 104)),
                            border: const OutlineInputBorder()),
                      ),
                      const SizedBox(height: 20.0),
                      Text('Email',
                          style: GoogleFonts.archivo(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your email',
                            hintStyle: GoogleFonts.archivo(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color:
                                    const Color.fromARGB(255, 102, 102, 104)),
                            border: const OutlineInputBorder(),
                            suffixIcon: const Icon(Icons.email),
                            suffixIconColor: Colors.black),
                      ),
                      const SizedBox(height: 20.0),
                      Text('Password',
                          style: GoogleFonts.archivo(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your password',
                            hintStyle: GoogleFonts.archivo(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color:
                                    const Color.fromARGB(255, 102, 102, 104)),
                            border: const OutlineInputBorder(),
                            suffixIcon: const Icon(Icons.key),
                            suffixIconColor: Colors.black),
                        obscureText: true,
                      ),
                      const SizedBox(height: 40.0),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(width: 1)),
                              foregroundColor: Colors.black,
                              backgroundColor:
                                  const Color.fromARGB(255, 174, 122, 255),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/');
                            },
                            child: Text('Create account',
                                style: GoogleFonts.archivo(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ],
                  )
                ])));
  }
}
