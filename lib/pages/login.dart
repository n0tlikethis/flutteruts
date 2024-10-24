import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 240, 255),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in',
                        style: GoogleFonts.archivoBlack(fontSize: 40),
                      ),
                      Text(
                        'Enter your account details',
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
                      const SizedBox(height: 25.0),
                      Container(
                        alignment: const Alignment(1.0, 0.0),
                        child: InkWell(
                          child: Text(
                            'Recover password',
                            style: GoogleFonts.archivo(
                                // color: Colors.green,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25.0),
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
                            child: Text('Sign in',
                                style: GoogleFonts.archivo(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(height: 15.0),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(children: <Widget>[
                            const Expanded(
                                child: Divider(
                              color: Colors.black,
                            )),
                            const SizedBox(width: 15),
                            Text("or",
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(width: 15),
                            const Expanded(child: Divider(color: Colors.black)),
                          ])),
                      const SizedBox(height: 15.0),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(width: 1)),
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.transparent,
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/register');
                            },
                            child: Text('Create new account',
                                style: GoogleFonts.archivo(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ],
                  )
                ])));
  }
}
