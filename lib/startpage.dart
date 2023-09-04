import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding:const EdgeInsets.all(80.0),
          child: Image.asset("lib/images/starticon.png"),
          ),
           Text("We provide fresh farm produce using natural ways and have the best farm animal products as well",
          textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
                textStyle: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                )
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return const HomePage();
            })),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child:  Text(
                "Get Started",
                style: GoogleFonts.notoSerif(),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}