import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserCard(),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // For centering the whole card in the middle of the screen
      body: Center(
        // Box for providing height and widht to the card
        child: SizedBox(
          width: 562,
          height: 633,
          // Card with rounded border
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            // Padding inside the card
            child: Padding(
              padding: const EdgeInsets.all(50),
              // Row for splitting the card vertically as Profile photo and text area
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Box for setting specific size to the profile photo as in the ui design spec
                  const SizedBox(
                    width: 114,
                    height: 114,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1516914943479-89db7d9ae7f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTZ8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                  // Padding to move the text area down and to the left.
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    // Vertical layout for the texts
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'David Grant',
                          style: GoogleFonts.merriweather(
                            textStyle: const TextStyle(
                                color: Color(0xFF1C2B62),
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                        ),
                        Text(
                          '3D Artist',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xFF1C2B62),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                        ),
                        // Padding for the subtitle and the rating-reviews-students section
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Icon(Icons.star_border_outlined),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('4.7 Rating'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Icon(Icons.badge_outlined),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('4447 Reviews'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Icon(Icons.verified_user_outlined),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('6000 Students'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            width: 250,
                            child: Text(
                              'David Grant has been making video games for a living for more than 14 years as a Designer, Producer, Creative Director, and Executive Producer, creating games for console, mobile, PC and Facebook. ',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                color: Color(0xFF1C2B62),
                                fontSize: 18,
                              )),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 7),
                          width: 120,
                          height: 44,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Show More',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xFF1C2B62),
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal)),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
