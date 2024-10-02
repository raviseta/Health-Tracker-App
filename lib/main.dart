import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trackers',
            style: TextStyle(color: Color.fromARGB(255, 44, 14, 14))),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          SectionWidget(title: 'Nutritions', icon: Icons.restaurant, children: [
            TrackerCard(
                title: 'Nutrition',
                value: '2580',
                unit: 'cals',
                icon: Icons.restaurant),
            TrackerCard(
                title: 'Water', value: '8', unit: 'Ounce', icon: Icons.water),
          ]),
          SectionWidget(
              title: 'Activity',
              icon: Icons.local_fire_department,
              children: [
                TrackerCard(
                    title: 'Summary',
                    value: '2580',
                    unit: 'cals',
                    icon: Icons.summarize),
                TrackerCard(
                    title: 'Exercise',
                    value: '8',
                    unit: 'Ounce',
                    icon: Icons.document_scanner),
                TrackerCard(
                    title: 'Steps',
                    value: '8,152',
                    unit: 'Steps',
                    icon: Icons.settings_phone_sharp),
              ]),
          SectionWidget(
            title: 'Sleep',
            icon: Icons.bed,
            children: [
              TrackerCard(
                  title: 'Sleep',
                  value: '7',
                  unit: 'Hours',
                  icon: Icons.select_all_sharp),
            ],
          ),
        ],
      ),
    );
  }
}

class SectionWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const SectionWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ExpansionTile(
        leading: Icon(icon),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        children: children,
      ),
    );
  }
}

class TrackerCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String unit;

  const TrackerCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10), // Adds 10 pixels of space
          Text(title, style: const TextStyle(fontSize: 16)),
          const Spacer(),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: ' $unit',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
