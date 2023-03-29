import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3/pages/main_menu.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/img-started.png"
              )
            )
          ),
        ),
        Container(
          height: 430,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.0)
              ])),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 54,
              ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rawatlah ",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      "tubuhmu, ",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                    Text(
                      "karena ",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
              ),
            ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "tubuhmu ",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                        ),
                    Text(
                      "satu-satunya ",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
              ),
            ),
            Center(
              child: Text( "tempat untuk tinggal.",
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ),
            const SizedBox(
                height: 15,
              ),
            Center(
                child: Text(
                  "Explore the best our services with professional \nspecialist doctor",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              
                const SizedBox(
                  height: 10,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainMenu()),
                    );
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 14),
                      decoration: BoxDecoration(
                          color: const Color(0xff707882),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: const Color.fromARGB(255, 235, 238, 240)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}