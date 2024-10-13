import 'package:flutter/material.dart';

class LogsCard extends StatelessWidget {
  const LogsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Logs",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            LogTile(
                date: "20 Apr, 2023",
                duration: "9 hrs",
                deepSleep: "34 mins",
                remSleep: "12 mins"),
            LogTile(
                date: "19 Apr, 2023",
                duration: "8 hrs",
                deepSleep: "3 hrs",
                remSleep: "45 mins"),
            LogTile(
                date: "19 Apr, 2023",
                duration: "8 hrs",
                deepSleep: "3 hrs",
                remSleep: "45 mins"),
            LogTile(
                date: "19 Apr, 2023",
                duration: "8 hrs",
                deepSleep: "3 hrs",
                remSleep: "45 mins"),
          ],
        ),
      ),
    );
  }
}

class LogTile extends StatelessWidget {
  final String date;
  final String duration;
  final String deepSleep;
  final String remSleep;

  const LogTile(
      {super.key,
      required this.date,
      required this.duration,
      required this.deepSleep,
      required this.remSleep});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(date),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Time in Bed: $duration"),
          Text("Deep Sleep: $deepSleep"),
          Text("REM Sleep: $remSleep"),
        ],
      ),
    );
  }
}
