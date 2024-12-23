import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 0.0;
  bool isExpanded = false; // Kontroluje rozwinięcie przycisków

  @override
  void initState() {
    super.initState();
    _fadeInImage();
  }

  void _fadeInImage() {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D2D50), // Ciemny granatowy
      appBar: AppBar(
        title: Text('Witaj!', style: GoogleFonts.poppins()),
        backgroundColor: Color(0xFF00B0B9), // Turquoise
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('lib/assets/images/Aleksandra.jpeg'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Cześć, jestem Aleksandra!',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Dart | Flutter | PHP | JAVA | RESTful API | Firebase | JavaScript',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  // Row dla pierwszych dwóch przycisków
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Ustawienie przycisków na środku
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/about');
                        },
                        icon: Icon(Icons.person, color: Colors.white),
                        label: Text('O mnie', style: GoogleFonts.poppins(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00B0B9), // Turquoise
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(width: 20), // Odstęp między pierwszym i drugim przyciskiem
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/skills');
                        },
                        icon: Icon(Icons.lightbulb, color: Colors.white),
                        label: Text('Umiejętności', style: GoogleFonts.poppins(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00B0B9), // Turquoise
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Jeśli isExpanded, dodajemy trzeci przycisk
                  if (isExpanded) ...[
                    SizedBox(height: 20), // Odstęp przed trzecim przyciskiem
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      icon: Icon(Icons.contact_mail, color: Colors.white),
                      label: Text('Kontakt', style: GoogleFonts.poppins(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00B0B9), // Turquoise
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],

                  // Przycisk rozwinięcia
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded; // Zmienia stan rozwinięcia
                      });
                    },
                    child: Text(isExpanded ? 'Mniej' : 'Więcej'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF00B0B9),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
