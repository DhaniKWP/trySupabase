import 'package:flutter/material.dart';

class NotificationDetailScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const NotificationDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Notifikasi')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Icon(Icons.notifications_active, size: 80, color: Colors.orange),
          const SizedBox(height: 16),
          Text(
            data['title']?.toString() ?? '-',
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            data['body']?.toString() ?? '-',
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}