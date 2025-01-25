import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Parking System'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.grey[900]!, Colors.black],
          ),
        ),
        child: StreamBuilder<DocumentSnapshot>(
          stream: _firestore
              .collection('parking_slots')
              .doc('current_status')
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            }

            if (!snapshot.data!.exists) {
              return Center(
                child: Text(
                  'No data found!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              );
            }

            final data = snapshot.data!.data() as Map<String, dynamic>;
            final slots = data['slots'] as List<dynamic>;

            return ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 16),
              itemCount: slots.length,
              itemBuilder: (context, index) {
                final slot = slots[index];
                final status = slot['status'];
                return Card(
                  color: status == 'Available'
                      ? Colors.green[800]
                      : Colors.red[800],
                  child: ListTile(
                    leading: Icon(
                      status == 'Available' ? Icons.local_parking : Icons.block,
                      color: Colors.white,
                      size: 32,
                    ),
                    title: Text(
                      'Parking Slot ${index + 1}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'Status: $status',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    trailing: Icon(
                      status == 'Available' ? Icons.check_circle : Icons.cancel,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
