import 'package:flutter/material.dart';
import 'package:trackers/Trackers/tracker_card.dart';
import 'package:trackers/Trackers/tracker_detail.dart';
import 'package:trackers/Trackers/trackersection.dart';

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
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const TrackerDetail();
                    },
                  ),
                );
              },
              child: const SectionWidget(
                  title: 'Nutritions',
                  icon: Icons.restaurant,
                  children: [
                    TrackerCard(
                        title: 'Nutrition',
                        value: '2580',
                        unit: 'cals',
                        icon: Icons.restaurant),
                    TrackerCard(
                        title: 'Water',
                        value: '8',
                        unit: 'Ounce',
                        icon: Icons.water),
                  ]),
            );
          },
        ));
  }
}

// class MyListView extends StatelessWidget {
//   // Sample data for the ListView
//   final List<String> items = List<String>.generate(20, (index) => "Item $index");

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return InkWell(
//           onTap: () {
//             // Action when the row is clicked
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('Clicked on ${items[index]}')),
//             );
//           },
//           child: ListTile(
//             title: Text(items[index]),
//           ),
//         );
//       },
//     );
//   }
// }