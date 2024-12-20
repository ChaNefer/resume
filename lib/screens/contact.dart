// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class ContactScreen extends StatelessWidget {
//   // Funkcja do otwierania URL
//   void _launchURL(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri, mode: LaunchMode.externalApplication);
//     } else {
//       throw 'Nie można otworzyć $url';
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Bądźmy w kontakcie',
//           textAlign: TextAlign.center,
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Skontaktuj się ze mną :)',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 20),
//             ContactCard(
//               icon: Icons.email,
//               title: 'E-mail',
//               subtitle: 'aleksandraweber7@gmail.com',
//               onTap: () {
//                 _launchURL('mailto:aleksandraweber7@gmail.com');
//               },
//             ),
//             SizedBox(height: 10),
//             ContactCard(
//               icon: Icons.web,
//               title: 'Strona internetowa',
//               subtitle: 'www.aleksandraweber.studio',
//               onTap: () {
//                 _launchURL('https://www.aleksandraweber.studio');
//               },
//             ),
//             SizedBox(height: 10),
//             ContactCard(
//               icon: Icons.phone,
//               title: 'Numer telefonu',
//               subtitle: '+48 668 624 774',
//               onTap: () {
//                 _launchURL('tel:+48668624774');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ContactCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String subtitle;
//   final VoidCallback? onTap;
//
//   const ContactCard({
//     required this.icon,
//     required this.title,
//     required this.subtitle,
//     this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         elevation: 4.0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Icon(
//                 icon,
//                 size: 40,
//                 color: Theme.of(context).primaryColor,
//               ),
//               SizedBox(width: 16),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     subtitle,
//                     style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  // Funkcja do otwierania URL
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Nie można otworzyć $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bądźmy w kontakcie',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.teal.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40),
              Text(
                'Skontaktuj się ze mną :)',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80),
              ContactCard(
                icon: Icons.email,
                title: 'E-mail',
                subtitle: 'aleksandraweber7@gmail.com',
                onTap: () {
                  _launchURL('mailto:aleksandraweber7@gmail.com');
                },
              ),
              SizedBox(height: 12),
              ContactCard(
                icon: Icons.web,
                title: 'Strona internetowa',
                subtitle: 'www.aleksandraweber.studio',
                onTap: () {
                  _launchURL('https://www.aleksandraweber.studio');
                },
              ),
              SizedBox(height: 12),
              ContactCard(
                icon: Icons.phone,
                title: 'Numer telefonu',
                subtitle: '+48 668 624 774',
                onTap: () {
                  _launchURL('tel:+48668624774');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const ContactCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 8.0,
        shadowColor: Colors.teal.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            gradient: LinearGradient(
              colors: [Colors.white, Colors.teal.shade50],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Colors.teal,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade900,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
