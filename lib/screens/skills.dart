import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> skills = [
    {'name': 'PHP', 'icon': 'lib/assets/icons/php.svg', 'level': 4},
    {'name': 'Java', 'icon': 'lib/assets/icons/java.svg', 'level': 5},
    {'name': 'JavaScript', 'icon': 'lib/assets/icons/javascript.svg', 'level': 3},
    {'name': 'MySQL', 'icon': 'lib/assets/icons/mysql.svg', 'level': 4},
    {'name': 'RESTful API', 'icon': 'lib/assets/icons/api.svg', 'level': 5},
    {'name': 'Flutter', 'icon': 'lib/assets/icons/flutter.svg', 'level': 6},
    {'name': 'Dart', 'icon': 'lib/assets/icons/dart.svg', 'level': 5},
    {'name': 'Kotlin', 'icon': 'lib/assets/icons/kotlin.svg', 'level': 4},
    {'name': 'C#', 'icon': 'lib/assets/icons/csharp.svg', 'level': 3},
    {'name': 'GraphQL', 'icon': 'lib/assets/icons/graphql.svg', 'level': 3},
  ];

  final List<Map<String, dynamic>> hobbies = [
    {'name': 'Fotografia krajobrazowa', 'icon': Icons.camera_alt},
    {'name': 'Wspinaczka górska', 'icon': Icons.terrain},
    {'name': 'Tworzenie gier w Unity', 'icon': Icons.videogame_asset},
    {'name': 'Pisanie bloga technologicznego', 'icon': Icons.edit},
    {'name': 'Gotowanie i eksperymentowanie w kuchni', 'icon': Icons.restaurant},
    {'name': 'Czytanie książek o rozwoju osobistym', 'icon': Icons.book},
    {'name': 'Rysowanie i malowanie', 'icon': Icons.brush},
    {'name': 'Programowanie robotów', 'icon': Icons.android},
    {'name': 'Łamigłówki logiczne', 'icon': Icons.extension},
    {'name': 'Kolekcjonowanie komiksów', 'icon': Icons.collections_bookmark},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Umiejętności i Zainteresowania'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Umiejętności',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
              Divider(thickness: 2, height: 32),
              Text(
                'Zainteresowania i hobby',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Column(
                children: hobbies.map((hobby) {
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: Icon(
                        hobby['icon'],
                        size: 40,
                        color: Colors.teal,
                      ),
                      title: Text(
                        hobby['name'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            height: 40,
            width: 40,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Icon(
                        Icons.circle,
                        size: 10,
                        color: index < level ? Colors.teal : Colors.grey,
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
