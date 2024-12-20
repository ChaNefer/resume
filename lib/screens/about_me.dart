// import 'package:flutter/material.dart';
//
// class AboutMeScreen extends StatelessWidget {
//   const AboutMeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('O mnie'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'O mnie',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blueAccent,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Jestem ambitną i zdyscyplinowaną programistką, która pasjonuje się tworzeniem aplikacji mobilnych. '
//                     'Posiadam solidną znajomość technologii Flutter oraz języka Dart, co pozwala mi tworzyć '
//                     'wydajne i nowoczesne aplikacje.',
//                 style: TextStyle(
//                   fontSize: 18,
//                   height: 1.6,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Technologie, w których się specjalizuję:',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 '• Flutter & Dart\n'
//                     '• Java\n'
//                     '• Postman\n'
//                     '• Relacyjne bazy danych (MySQL, PHP)\n'
//                     '• Git\n'
//                     '• Firebase\n'
//                     '• Android Studio',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Moje doświadczenie zawodowe:',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 '• Tworzenie aplikacji mobilnych z wykorzystaniem Flutter\n'
//                     '• Praca z relacyjnymi bazami danych i RESTful API\n'
//                     '• Znajomość narzędzi takich jak Postman oraz systemu kontroli wersji Git\n'
//                     '• Rozwiązywanie problemów i optymalizacja kodu\n'
//                     '• Współpraca w zespołach Agile, z naciskiem na komunikację i efektywność\n',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Moje podejście do pracy:',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Cenię sobie dokładność i dbałość o szczegóły. Moje cechy charakteru, takie jak upór, '
//                     'kreatywność i pomysłowość, pomagają mi skutecznie realizować zadania, nawet pod presją czasu. '
//                     'Jestem osobą komunikatywną, dobrze radzę sobie ze stresem i zawsze szukam rozwiązań, które łączą '
//                     'technologię z potrzebami użytkownika. Wierzę, że każde wyzwanie to okazja do nauki i rozwoju.',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Poszukuję możliwości, które pozwolą mi rozwijać moje umiejętności oraz przyczynić się do sukcesu '
//                     'zespołu. Jestem otwarta na nowe wyzwania i gotowa na dalszy rozwój zawodowy.',
//                 style: TextStyle(fontSize: 16),
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

class AboutMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('O mnie'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('lib/assets/images/zosia-i-ja.jpeg'),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'O mnie',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Jestem ambitną i zdyscyplinowaną programistką, która pasjonuje się tworzeniem aplikacji mobilnych. '
                      'Posiadam solidną znajomość technologii Flutter oraz języka Dart, co pozwala mi tworzyć '
                      'wydajne i nowoczesne aplikacje.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 20),
                _buildSection(
                  title: 'Technologie, w których się specjalizuję:',
                  icon: Icons.code,
                  content: [
                    '• Flutter & Dart',
                    '• Java',
                    '• Postman',
                    '• Relacyjne bazy danych (MySQL, PHP)',
                    '• Git',
                    '• Android Studio',
                  ],
                ),
                _buildSection(
                  title: 'Moje doświadczenie zawodowe:',
                  icon: Icons.work,
                  content: [
                    '• Tworzenie aplikacji mobilnych z wykorzystaniem Flutter',
                    '• Praca z relacyjnymi bazami danych i RESTful API',
                    '• Znajomość narzędzi takich jak Postman oraz systemu kontroli wersji Git',
                    '• Rozwiązywanie problemów i optymalizacja kodu',
                    '• Współpraca w zespołach Agile, z naciskiem na komunikację i efektywność',
                  ],
                ),
                _buildSection(
                  title: 'Moje podejście do pracy:',
                  icon: Icons.lightbulb,
                  content: [
                    'Cenię sobie dokładność i dbałość o szczegóły. Moje cechy charakteru, takie jak upór, '
                        'kreatywność i pomysłowość, pomagają mi skutecznie realizować zadania, nawet pod presją czasu.',
                    'Jestem osobą komunikatywną, dobrze radzę sobie ze stresem i zawsze szukam rozwiązań, które łączą '
                        'technologię z potrzebami użytkownika.',
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Poszukuję możliwości, które pozwolą mi rozwijać moje umiejętności oraz przyczynić się do sukcesu '
                      'zespołu. Jestem otwarta na nowe wyzwania i gotowa na dalszy rozwój zawodowy.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required IconData icon,
    required List<String> content,
  }) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.blueAccent),
                SizedBox(width: 8),
                Flexible(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ...content.map(
                  (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  item,
                  style: TextStyle(fontSize: 16, height: 1.4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
