
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto Trader',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Auto Trader'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const Text(
                'Welcome back',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                'Auto Trader',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Horizontal Scrolling Section
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _card('Stocks'),
                    _card('Crypto'),
                    _card('Watchlist'),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Vertical List Section
              const Text(
                'My Investments',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Investment ${index + 1}'),
                      subtitle: const Text(
                        'Track your investment and performance',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card(String label) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(8),
      color: Colors.deepPurple.shade50,
      child: Center(
        child: Text(label),
      ),
    );
  }
}
