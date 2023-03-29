import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(
      String img,
      String name,
      String role,
    ) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 51,
            ),
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        img,
                      ))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        role,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/img-star.png",
                          )),
                    ),
                  ),
                  Text(
                    "4.8",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(0, 253, 253, 253),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Doc, \nFajarNgrha.',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Stay Healthy with Our Specialist Doctor',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Klik ',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 68,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img-profile.png",
                              ))),
                    )
                  ],
                ),
                doctorCard("assets/img-doc1.png", "dr. Nining Sukasuka",
                    "Spesialis Penyakit Dalam"),
                doctorCard("assets/img-doc2.png", "dr. Cinta Srikaya",
                    "Spesialis Pembuluh Darah")
              ],
            ),
          ),
        ),
      ),
    );
  }
}