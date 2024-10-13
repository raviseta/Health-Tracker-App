import 'package:flutter/material.dart';

class DevicesCard extends StatelessWidget {
  const DevicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Devices",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            DeviceTile(name: "Galaxy Watch4", lastSync: "19 May"),
            DeviceTile(name: "Fitbit", lastSync: "23 Jan"),
            DeviceTile(name: "Apple Health", lastSync: "15 Jan"),
          ],
        ),
      ),
    );
  }
}

class DeviceTile extends StatelessWidget {
  final String name;
  final String lastSync;

  const DeviceTile({super.key, required this.name, required this.lastSync});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(name),
      subtitle: Text("Last sync: $lastSync"),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
