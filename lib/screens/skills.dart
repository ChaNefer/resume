import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> skills = [
    {'name': 'PHP', 'icon': 'lib/assets/icons/php.svg', 'level': 6},
    {'name': 'Java', 'icon': 'lib/assets/icons/java.svg', 'level': 5},
    {'name': 'JavaScript', 'icon': 'lib/assets/icons/javascript.svg', 'level': 6},
    {'name': 'MySQL', 'icon': 'lib/assets/icons/mysql.svg', 'level': 6},
    {'name': 'RESTful API', 'icon': 'lib/assets/icons/api.svg', 'level': 6},
    {'name': 'Flutter', 'icon': 'lib/assets/icons/flutter.svg', 'level': 6},
    {'name': 'Dart', 'icon': 'lib/assets/icons/dart.svg', 'level': 6},
    {'name': 'Język angielski', 'icon': 'lib/assets/icons/england.svg', 'level': 6},
    {'name': 'Język niemiecki', 'icon': 'lib/assets/icons/germany.svg', 'level': 6},
  ];

  final List<Map<String, dynamic>> hobbies = [
    {'name': 'Literatura grozy oraz fantasy', 'icon': Icons.book},
    {'name': 'Gra na skrzypcach', 'icon': Icons.music_note},
    {'name': 'Gotowanie', 'icon': Icons.restaurant},
    {'name': 'Gry video', 'icon': Icons.games},
    {'name': 'Programowanie', 'icon': Icons.code},
    {'name': 'Łamigłówki logiczne', 'icon': Icons.extension},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Umiejętności i Zainteresowania',
          style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan.shade400,
      ),
      body: Container(
        color: Colors.grey.shade300, // Tło ekranu
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Umiejętności',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
                ),
                SizedBox(height: 16),
                Column(
                  children: skills.map((skill) {
                    return SkillWithLevel(
                      name: skill['name']!,
                      iconPath: skill['icon']!,
                      level: skill['level']!,
                    );
                  }).toList(),
                ),
                Divider(thickness: 2, height: 32, color: Colors.teal),
                Text(
                  'Zainteresowania i hobby',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
                ),
                SizedBox(height: 16),
                Wrap(
                  spacing: 16.0, // Odstępy między elementami w rzędzie
                  runSpacing: 16.0, // Odstępy między wierszami
                  children: hobbies.map((hobby) {
                    return GestureDetector(
                      onTap: () {
                        // Wywołanie akcji po kliknięciu
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.cyan.shade900, Colors.teal.shade400],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      hobby['icon'],
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Zainteresowanie',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      hobby['name'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Świetny wybór! Warto poświęcić więcej czasu na "${hobby['name']}".',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white70,
                                        height: 1.5,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 24),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal.shade600,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          side: BorderSide(
                                            color: Colors.deepPurple, // Kolor obramowania
                                            width: 2.0,         // Grubość obramowania
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                        child: Text(
                                          'OK',
                                          style: TextStyle(fontSize: 16, color: Colors.black),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        decoration: BoxDecoration(
                          color: Colors.cyan.shade900,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan.shade200,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              hobby['icon'],
                              size: 24,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              hobby['name'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillWithLevel extends StatelessWidget {
  final String name;
  final String iconPath;
  final int level;

  const SkillWithLevel({required this.name, required this.iconPath, required this.level});

  @override
  Widget build(BuildContext context) {
    const double frameSize = 50.0;
    const double iconSize = 30.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: frameSize,
            height: frameSize,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
              border: Border.all(color: Colors.cyan.shade900, width: 2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SvgPicture.asset(
              iconPath,
              height: iconSize,
              width: iconSize,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                SizedBox(height: 8),
                Row(
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Icon(
                        Icons.circle,
                        size: 10,
                        color: index < level ? Colors.deepPurple : Colors.grey.shade400,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
