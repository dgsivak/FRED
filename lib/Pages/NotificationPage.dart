import 'package:flutter/material.dart';
import '../MVC/Incident.dart';

class NotificationsPage extends StatelessWidget {
  final List<Incident> incidents = [
    Incident(
      buildingName: 'Building A',
      section: 'Section 1',
      date: DateTime(2024, 9, 18),
      time: TimeOfDay(hour: 10, minute: 0),
    ),
    Incident(
      buildingName: 'Building B',
      section: 'Section 2',
      date: DateTime(2024, 9, 17),
      time: TimeOfDay(hour: 14, minute: 30),
    ),
    // Add more incidents here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: ListView.builder(
        itemCount: incidents.length,
        itemBuilder: (context, index) {
          final incident = incidents[index];
          return ListTile(
            title: Text('Incident ${index + 1}'),
            subtitle: Text(
              'Building: ${incident.buildingName}, Section: ${incident.section}\n'
                  'Date: ${incident.date.toLocal().toString().split(' ')[0]}\n'
                  'Time: ${incident.time.format(context)}',
            ),
          );
        },
      ),
    );
  }
}